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
    [HideInInspector] public GameObject _startVCam;
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
        //StartStageCamera.SetActive(true
        _startVCam = Managers.Spawn.CameraByID((PrefabID)3);
        _startVCam.gameObject.SetActive(true);
        
    }
    private void OnClickQuitButton()
    {
        Application.Quit();
    }
}
