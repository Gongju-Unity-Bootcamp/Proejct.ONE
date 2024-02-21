using System;
using UniRx;
using UniRx.Triggers;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine;

public class CharacterTurnPopup : UIPopup
{
    private enum Buttons
    {
        ActionButton
    }

    private enum Images
    {
        ActionButton
    }

    private enum Texts
    {
        ActionText
    }

    private Buttons _currentButton;
    private Buttons CurrentButton
    {
        get => _currentButton;
        set
        {
            _currentButton = value;
        }
    }

    public override void Init()
    {
        base.Init();

        BindButton(typeof(Buttons));
        BindImage(typeof(Images));
        BindText(typeof(Texts));

        CurrentButton = _currentButton;

        foreach (Buttons buttonIndex in Enum.GetValues(typeof(Buttons)))
        {
            Button button = GetButton((int)buttonIndex);
            button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
            button.BindViewEvent(OnClickButton, ViewEvent.Click, this);
        }
    }

    public void InitButton(int buttonIndex)
    {
        _currentButton = (Buttons)buttonIndex;
    }

    private void OnEnterButton(PointerEventData eventData)
    {
        Buttons nextButton = Enum.Parse<Buttons>(eventData.pointerEnter.name);

        CurrentButton = nextButton;
    }

    private void OnClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerClick.name);

        ProcessButton(button);
    }

    private void ProcessButton(Buttons button)
    {
        switch (button)
        {
            case Buttons.ActionButton: OnClickPlayButton(); break;
            default: break;
        }
    }

    private void OnClickPlayButton()
    {
        Debug.Log("헤헤 공격!");
        Managers.UI.ClosePopupUI(this);
    }
}
