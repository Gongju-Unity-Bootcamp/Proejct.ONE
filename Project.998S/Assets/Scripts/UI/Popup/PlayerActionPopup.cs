using System.Collections.Generic;
using System;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections;
using System.Linq;
using UnityEngine;

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

    private Dictionary<Buttons, SkillData> skills = new Dictionary<Buttons, SkillData>();
    private int focusCount = 0;

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindButton(typeof(Buttons));
        BindText(typeof(Texts));

        Player player = Managers.Stage.turnCharacter.Value.GetCharacterInGameObject<Player>();
        int skillCount = player.skillIds.Value.Length;

        for (int index = 0; index < Enum.GetValues(typeof(Buttons)).Length; ++index)
        {
            Button button = GetButton(0);

            if (index < skillCount)
            {
                SkillData data = Managers.Data.Skill[(SkillID)player.skillIds.Value[index]];

                skills.Add((Buttons)index, data);
                SetSpriteStateInButton(button, data);

                button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
                button.BindViewEvent(OnExitButton, ViewEvent.Exit, this);
                button.BindViewEvent(OnLeftClickButton, ViewEvent.LeftClick, this);
                button.BindViewEvent(OnRightClickButton, ViewEvent.RightClick, this);

                continue;
            }

            button.gameObject.SetActive(false);
        }
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
        UpdateAttackIndicator(skills[button]);
    }

    private void OnExitButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        UpdateSlotIndicator(skills[button]);
    }

    private void OnLeftClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        Character character = Managers.Stage.turnCharacter.Value;

        if (false == character.IsCharacterAttack())
        {
            Character targetCharacter = Managers.Stage.selectCharacter.Value;
            Skill skill = character.GetSkillEffect(character.currentSkill.Value);

            int damage = Define.Calculate.Damage(character.currentAttack.Value
            + skill.Damage, targetCharacter.currentDefense.Value,
            character.currentLuck.Value);

            focusCount = character.maxFocus.Value - character.currentFocus.Value;
            character.maxFocus.Value = focusCount;
            Managers.Game.Player.slotAccuracyDamage = Define.Calculate.Accuracy(damage, focusCount, character.currentAccuracy.Value);
            Managers.Game.Player.AttackAction();
            StartCoroutine(UpdateAccuracyFocusImage(skills[button]));
        }
    }

    private void OnRightClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        focusCount = focusCount > 3 ? 0 : focusCount;
        focusCount++;
        UpdateSlotIndicator(skills[button]);
    }

    private void UpdateAttackIndicator(SkillData data)
    {
        Character targetCharacter = Managers.Stage.selectCharacter.Value;
        Character character = Managers.Stage.turnCharacter.Value;
        EquipmentData equipmentData = Managers.Data.Equipment[character.equipmentId.Value];
        character.currentSkill.Value = data;

        GetText((int)Texts.SkillInfoText).text = $"행운({character.currentLuck.Value}%) = {data.Damage} 스킬 공격력";
        GetText((int)Texts.DamageText).text = Define.Calculate.Damage(character.currentAttack.Value + data.Damage, targetCharacter.currentDefense.Value).ToString();
        GetText((int)Texts.SlotAccuracyText).text = Define.Calculate.LuckOrAccuracy(data.Accuracy, equipmentData.Accuracy).ToString();
        GetText((int)Texts.SkillNameText).text = data.Name;
    }

    private void UpdateSlotIndicator(SkillData data)
    {
        Character character = Managers.Stage.turnCharacter.Value;

        if (true == character.IsCharacterAttack())
        {
            return;
        }

        for (int index = 0; index < character.maxFocus.Value; ++index)
        {
            if (index <= focusCount)
            {
                GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.FOCUS));

                continue;
            }
            GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.BASIC));
        }
    }

    private IEnumerator UpdateAccuracyFocusImage(SkillData data)
    {
        int index = -1;

        foreach (bool isSuccessSlot in Managers.Game.Enemy.slotAccuracyDamage.SelectMany(value => value.Keys))
        {
            ++index;
            yield return new WaitForSeconds(0.1f);

            if (true == isSuccessSlot)
            {
                if (focusCount == 0)
                {
                    GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SUCCESS));

                    continue;
                }

                GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.FOCUS));
                --focusCount;

                continue;
            }

            GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.FAIL));
        }
    }
}
