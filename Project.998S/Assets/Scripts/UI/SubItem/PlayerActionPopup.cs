using System.Collections.Generic;
using System;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEditor.SceneTemplate;

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

    private Dictionary<Buttons, SkillData> skillButtons = new Dictionary<Buttons, SkillData>();
    private int focusCount = 0;

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindButton(typeof(Buttons));
        BindText(typeof(Texts));

        Player player = Managers.Stage.turnCharacter.Value.GetCharacterInGameObject<Player>();
        int skillCount = player.skillIds.Value.Length;
        int index = 0;

        foreach (Buttons buttonIndex in Enum.GetValues(typeof(Buttons)))
        {
            Button button = GetButton((int)buttonIndex);

            if (index < skillCount)
            {
                SkillData data = Managers.Data.Skill[(SkillID)player.skillIds.Value[index]];
                skillButtons.Add(buttonIndex, data);
                SetSpriteStateInButton(button, data);
                UpdateTurnActionIndicator(data);
                button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
                button.BindViewEvent(OnExitButton, ViewEvent.Exit, this);
                button.BindViewEvent(OnLeftClickButton, ViewEvent.LeftClick, this);
                button.BindViewEvent(OnRightClickButton, ViewEvent.RightClick, this);
                ++index;

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
        spriteState.selectedSprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.H));
        spriteState.highlightedSprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.H));
    }

    private void OnEnterButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);

        if (skillButtons[button] != null)
        {
            UpdateTurnActionIndicator(skillButtons[button]);
        }
    }

    private void OnExitButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);

        if (skillButtons[button] != null)
        {
            UpdateNewFocusImage(skillButtons[button]);
        }
    }

    private void OnLeftClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        Character character = Managers.Stage.turnCharacter.Value;

        if (character.IsCharacterAttack())
        {
            return;
        }

        if (skillButtons[button] != null)
        {
            Managers.Game.Player.AttackAction();
            UpdateAccuracyFocusImage(skillButtons[button]);
        }
    }

    private void OnRightClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);

        if (skillButtons[button] != null)
        {
            UpdateFocusIndicator(skillButtons[button]);
        }
    }

    private void UpdateTurnActionIndicator(SkillData data)
    {
        Character targetCharacter = Managers.Stage.selectCharacter.Value;
        Character character = Managers.Stage.turnCharacter.Value;
        EquipmentData equipmentData = Managers.Data.Equipment[character.equipmentId.Value];
        character.currentSkill.Value = data;

        GetText((int)Texts.SkillInfoText).text
            = $"행운({character.currentLuck.Value}%) = {data.Damage} 스킬 공격력";
        GetText((int)Texts.DamageText).text
            = Define.Calculate.Damage(character.currentAttack.Value
            + data.Damage, targetCharacter.currentDefense.Value).ToString();
        GetText((int)Texts.SlotAccuracyText).text
            = Define.Calculate.LuckOrAccuracy(data.Accuracy, equipmentData.Accuracy).ToString();
        GetText((int)Texts.SkillNameText).text = data.Name;
    }

    private void UpdateFocusIndicator(SkillData data)
    {
        Character character = Managers.Stage.turnCharacter.Value;

        if (character.IsCharacterAttack())
        {
            return;
        }

        focusCount = character.currentFocus.Value;
        --focusCount;

        if (focusCount < 0)
        {
            focusCount = 0;
            UpdateNewFocusImage(data);

            return;
        }

        character.currentFocus.Value = focusCount;
        UpdateFocusImage(data);
    }

    private void UpdateFocusImage(SkillData data)
    {
        int index = 0;

        foreach (Images imageIndex in Enum.GetValues(typeof(Images)))
        {
            if (index >= focusCount)
            {
                GetImage((int)imageIndex).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SLOTH));
            }
            else
            {
                GetImage((int)imageIndex).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SLOT));
            }

            ++index;
        }
    }

    private void UpdateNewFocusImage(SkillData data)
    {
        Character character = Managers.Stage.turnCharacter.Value;

        if (character.IsCharacterAttack())
        {
            return;
        }

        character.currentFocus.Value = character.maxFocus.Value;

        foreach (Images imageIndex in Enum.GetValues(typeof(Images)))
        {
            GetImage((int)imageIndex).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SLOT));
        }
    }

    private void UpdateAccuracyFocusImage(SkillData data)
    {
        int index = 0;

        foreach (KeyValuePair<bool, int> pair in Managers.Game.Player.slotAccuracyDamage)
        {
            if (pair.Key)
            {
                GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SLOTF));
            }
            ++index;
        }

        Managers.Game.Player.slotAccuracyDamage = null;
    }
}
