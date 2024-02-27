using System.Collections.Generic;
using System.Collections;
using System;
using UniRx;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine;
using UnityEngine.InputSystem.Utilities;
using System.Linq;
using JetBrains.Annotations;

public class PlayerActionPopup : UIPopup
{
    private enum Images
    {
        Slot1Image,
        Slot2Image,
        Slot3Image
    }

    private enum Buttons
    {
        Skill1Button,
        Skill2Button
    }

    private enum Texts
    {
        SkillInfoText,
        DamageText,
        SlotAccuracyText,
        SkillNameText
    }

    private SkillSlotState[] slotStates;
    private Dictionary<Buttons, SkillData> skills;
    private Player player;
    private Character targetCharacter;
    private EquipmentData equipmentData;
    private SkillData skillData;
    private int[] dataIndex;
    private int slotCount;
    private int playerSkillCount;
    private int slotIndex;
    private int oldFocusCount;

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindButton(typeof(Buttons));
        BindText(typeof(Texts));

        InitUIData();

        int buttonCount = Enum.GetValues(typeof(Buttons)).Length;
        for (int index = 0; index < buttonCount; ++index)
        {
            Button button = GetButton(index);

            if (index < playerSkillCount)
            {
                SkillData data = Managers.Data.Skill[(SkillID)dataIndex[index]];
                skillData = data;
                skills.Add((Buttons)index, data);
                SetSpriteStateInButton(button, data);
                UpdateAllSlotIndicator(skillData);
                UpdateAttackIndicator(skillData);

                button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
                button.BindViewEvent(OnExitButton, ViewEvent.Exit, this);
                button.BindViewEvent(OnLeftClickButton, ViewEvent.LeftClick, this);
                button.BindViewEvent(OnRightClickButton, ViewEvent.RightClick, this);

                continue;
            }



            button.gameObject.SetActive(false);
        }
    }

    private void InitUIData()
    {
        slotCount = Enum.GetValues(typeof(Images)).Length;
        slotStates = new SkillSlotState[slotCount];
        Array.Fill(slotStates, SkillSlotState.Basic);
        slotIndex = 0;

        skills = new Dictionary<Buttons, SkillData>();
        player = Managers.Stage.turnCharacter.Value.GetCharacterInGameObject<Player>();
        equipmentData = Managers.Data.Equipment[player.equipmentId.Value];
        dataIndex = player.skillIdEnum.Value;
        playerSkillCount = player.skillIdEnum.Value.Length;
        targetCharacter = Managers.Stage.selectCharacter.Value;

        oldFocusCount = Managers.Stage.turnCharacter.Value.currentFocus.Value;
    }

    private void ResetSlot()
    {
        Array.Fill(slotStates, SkillSlotState.Basic);
        slotIndex = 0;

        var character = Managers.Stage.turnCharacter;
        character.Value.currentFocus.Value = oldFocusCount;
    }

    private void SetSpriteStateInButton(Button button, SkillData data)
    {
        button.transition = Selectable.Transition.SpriteSwap;

        SpriteState spriteState = button.spriteState;

        button.image.sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon));
        spriteState.selectedSprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.HOVER));
        spriteState.highlightedSprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.HOVER));
    }

    private void OnEnterButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        skillData = skills[button];
    }

    private void OnExitButton(PointerEventData eventData)
    {
        if (true == player.IsCharacterAttack())
        {
            return;
        }

        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        skillData = skills[button];
        ResetSlot();
        UpdateAllSlotIndicator(skillData);
    }

    private void OnLeftClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        skillData = skills[button];

        if (false == player.IsCharacterAttack())
        {
            oldFocusCount = Managers.Stage.turnCharacter.Value.currentFocus.Value;

            DetermineRemainSlotSuccess();
            Managers.Game.Player.AttackDamage = CalculateDamage();
            Managers.Stage.turnCharacter.Value.currentSkill.Value = skillData;
            Managers.Game.Player.AttackAction();

            StartCoroutine(UpdateSlotIndicatorCo(skillData));
        }
    }

    private void DetermineRemainSlotSuccess()
    {
        int prob = skillData.Accuracy + equipmentData.Accuracy;

        for (int index = slotIndex; index < slotStates.Length; ++index)
        {
            int randomNumber = UnityEngine.Random.Range(1, 101);
            if (randomNumber <= prob)
            {
                slotStates[index] = SkillSlotState.Success;
            }
            else
            {
                slotStates[index] = SkillSlotState.Fail;
            }
        }
    }

    private int CalculateDamage()
    {
        int successCount = 0;
        for (int index = 0; index < slotStates.Length; ++index)
        {
            if (slotStates[index] == SkillSlotState.Success ||
                slotStates[index] == SkillSlotState.Focus)
            {
                successCount++;
            }
        }

        int damage = Define.Calculate.Damage(
                player.currentAttack.Value + skillData.Damage,
                targetCharacter.currentDefense.Value,
                player.currentLuck.Value);
        damage = Math.Max(1, damage * (successCount / 3));

        return damage;
    }

    private void OnRightClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        skillData = skills[button];

        if (IsAllSlotFocus())
        {
            ResetSlot();
        }
        else if (Managers.Stage.turnCharacter.Value.currentFocus.Value > 0)
        {
            UseFocus(slotIndex++, SkillSlotState.Focus);
        }

        UpdateAllSlotIndicator(skillData);
    }

    private void UseFocus(int index, SkillSlotState skillSlotState)
    {
        slotStates[index] = skillSlotState;

        var character = Managers.Stage.turnCharacter;
        character.Value.currentFocus.Value -= 1;
    }

    private bool IsAllSlotFocus() => slotIndex == slotCount;

    private void UpdateAttackIndicator(SkillData data)
    {
        GetText((int)Texts.SkillInfoText).text = $"행운({player.currentLuck.Value}%) = {data.Damage} 스킬 공격력";
        GetText((int)Texts.DamageText).text = Define.Calculate.Damage(player.currentAttack.Value + data.Damage, targetCharacter.currentDefense.Value).ToString();
        GetText((int)Texts.SlotAccuracyText).text = Define.Calculate.LuckOrAccuracy(data.Accuracy, equipmentData.Accuracy).ToString();
        GetText((int)Texts.SkillNameText).text = data.Name;
    }

    private void UpdateSlotIndicator(SkillData data, int index)
    {
        GetImage(index).sprite = slotStates[index] switch
        {
            SkillSlotState.Basic => Managers.Resource.LoadSprite(string.Concat(skillData.Icon, Define.Keyword.BASIC)),
            SkillSlotState.Success => Managers.Resource.LoadSprite(string.Concat(skillData.Icon, Define.Keyword.SUCCESS)),
            SkillSlotState.Fail => Managers.Resource.LoadSprite(string.Concat(skillData.Icon, Define.Keyword.FAIL)),
            SkillSlotState.Focus => Managers.Resource.LoadSprite(string.Concat(skillData.Icon, Define.Keyword.FOCUS)),
            _ => throw new NotImplementedException()
        };
    }

    private void UpdateAllSlotIndicator(SkillData data)
    {
        for (int index = 0; index < slotStates.Length; ++index)
        {
            UpdateSlotIndicator(data, index);
        }
    }

    private IEnumerator UpdateSlotIndicatorCo(SkillData data)
    {
        for (int index = 0; index < slotStates.Length; ++index)
        {
            UpdateSlotIndicator(data, index);
            yield return new WaitForSeconds(0.2f);
        }
    }
}
