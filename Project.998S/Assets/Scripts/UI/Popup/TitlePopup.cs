using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UniRx;
using UniRx.Triggers;
using System;

public class TitlePopup : UIPopup
{
    enum Buttons
    {
        NewGameButton,
        LoadGameButton,
        QuitButton
    }

    public override void Init()
    {
        base.Init();

        BindButton(typeof(Buttons));

        foreach (Buttons buttonIndex in Enum.GetValues(typeof(Buttons)))
        {
            Button button = GetButton((int)buttonIndex);
            button.BindViewEvent(OnClickButton, ViewEvent.LeftClick, this);
            SetSpriteStateInButton(button);
        }
    }

    private void SetSpriteStateInButton(Button button)
    {
        button.transition = Selectable.Transition.SpriteSwap;

        SpriteState spriteState = button.spriteState;

        button.spriteState = spriteState;

        button.image.sprite = Managers.Resource.LoadSprite("TitleButton");
        spriteState.selectedSprite = Managers.Resource.LoadSprite("TitleButtonHover");
        spriteState.highlightedSprite = Managers.Resource.LoadSprite("TitleButtonHover");
    }

    private void OnClickButton(PointerEventData eventData)
    {
        Buttons button = Enum.Parse<Buttons>(eventData.pointerEnter.name);
        Debug.Log(button);
        ProcessButton(button);
    }

    private void ProcessButton(Buttons button)
    {
        switch (button)
        {
            case Buttons.NewGameButton:
                OnClickPlayButton();
                break;
            case Buttons.QuitButton:
                OnClickQuitButton();
                break;
        }
    }

    private void OnClickPlayButton()
    {
        Managers.Game.GameStart((StageID)1);
        //StartStageCamera.SetActive(true);
        //cart.m_Speed = 7;
        //방법 1. 현재 포지션과 전달 포지션이 같으면 count하여 count == 2일때 StartStageCamera.SetActive(false);
            // count 2인 이유 : 1로 하면 처음 카메라가 시작할 때 겹쳐서 카메라가 바로 멈춤.
            // 이후 count 도달 시 TurnCamera.SetActive(ture);
        
        //// Player의 턴이 종료 되었을 때 cart.m_Speed(3);
        // Enemies의 턴이 종료 되었을 때는 cart.m_Speed(-3);
        // 만약 Enemies의 Count == 0 일 때 TurnCamera.SetActive(false);
        
    }
    private void OnClickQuitButton()
    {
        Application.Quit();
    }
}
