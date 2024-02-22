using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOverPopup : UIPopup
{
    enum Buttons
    {
        MainMenuButton
    }
    enum Images
    {
        MainMenuButton
    }
    enum Texts
    {
        MainMenuText
    }
    enum Objects
    {
        MainMenuButton,
        BG,
        OverText
    }

    private Buttons _currentButton;
    private Buttons CurrentButton
    {
        get => _currentButton;
        set 
        {
            SetButtonNormal(_currentButton);
        }
    }

    private void SetButtonNormal(Buttons buttonIndex)
    {

    }

}
