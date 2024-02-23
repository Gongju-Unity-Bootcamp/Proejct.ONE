using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHudExpSubItem : UISubItem
{
    enum Images
    {
        PlayerExpBar
    }

    enum Texts
    {
        PlayerExpText,
        PlayerMax
    }

    public override void Init()
    {
        base.Init();

        Managers.Stage.players[0].currentExp.BindModelEvent(UpdateExpGaugeImage, this);
        Managers.Stage.players[0].currentExp.BindModelEvent(UpdateExpText, this);
    }

    private void UpdateExpGaugeImage(int currentExp)
    {
        float maxExp = Managers.Stage.players[0].currentExp.Value = 0;
        GetImage((int)Images.PlayerExpBar).fillAmount = currentExp / maxExp;
    }
    private void UpdateExpText(int CurrentExp)
    {
        GetText((int)Texts.PlayerExpText).text = CurrentExp.ToString();
    }
}
