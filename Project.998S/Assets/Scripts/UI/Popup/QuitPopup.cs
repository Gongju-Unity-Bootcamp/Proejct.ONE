using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UniRx;
using UniRx.Triggers;
using System;

public class QuitPopup : UIPopup
{
    enum Buttons
    {
        CancelButton,
        QuitButton
    }
    enum Images
    {
        CancleButton,
        QuitButton
    }

    private Buttons _currentButton;
    private Buttons CurrentButton
    {
        get => _currentButton;
        set
        {
            SetButtonNormal(_currentButton);
            SetButtonHighlighted(value);

            _currentButton = value;
        }
    }

    private static readonly Color NORMAL_COLOR = Color.white;
    private static readonly Color HIGHLIGHTED_COLOR = Color.black;

    public override void Init()
    {
        base.Init();

        BindButton(typeof(Buttons));
        BindImage(typeof(Images));

        CurrentButton = _currentButton;

        foreach (Buttons buttonIndex in Enum.GetValues(typeof(Buttons)))
        {
            Button button = GetButton((int)buttonIndex);
            button.BindViewEvent(OnEnterButton, ViewEvent.Enter, this);
            button.BindViewEvent(OnClickButton, ViewEvent.LeftClick, this);
        }
        this.UpdateAsObservable()
            .Subscribe(OnPressKey);
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

    private void OnPressKey(Unit unit)
    {
        if (Input.GetMouseButtonDown(0))
        {
            ProcessButton(CurrentButton);
        }
    }

    private void SetButtonNormal(Buttons buttonIndex)
    {
        GetImage((int)buttonIndex).sprite = Managers.Resource.LoadSprite("CancelButton");
        GetImage((int)buttonIndex).sprite = Managers.Resource.LoadSprite("QuitButton");

        GetText((int)buttonIndex).color = NORMAL_COLOR;
    }

    private void SetButtonHighlighted(Buttons buttonIndex)
    {
        GetImage((int)buttonIndex).sprite = Managers.Resource.LoadSprite("CancelButtonHover");
        GetImage((int)buttonIndex).sprite = Managers.Resource.LoadSprite("QuitButtonHover");
    }

    private void ProcessButton(Buttons button)
    {
        switch (button)
        {
            case Buttons.CancelButton: OnClickCancelButton(); break;
            case Buttons.QuitButton: OnClickQuitButton(); break;
            default: break;
        }
    }

    private void OnClickCancelButton()
    {

    }

    private void OnClickQuitButton()
    {

    }
}
