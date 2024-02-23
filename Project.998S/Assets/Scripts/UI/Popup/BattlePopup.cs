using System;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine;

public class BattlePopup : UIPopup
{
    protected enum Images
    {
        Slot1Image,
        Slot2Image,
        Slot3Image
    }

    protected enum Buttons
    {
        Skill1Button,
        Skill2Button
    }

    protected enum Texts
    {
        SkillInfoText,
        DamageText,
        SlotAccuracyText,
        SkillNameText
    }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindButton(typeof(Buttons));
        BindText(typeof(Texts));

        foreach (Buttons buttonIndex in Enum.GetValues(typeof(Buttons)))
        {
            Button button = GetButton((int)buttonIndex);
            button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
        }
    }

    private void OnEnterButton(PointerEventData eventData)
    {

    }
    
    private void OnClickButton(PointerEventData eventData)
    {

    }
}
