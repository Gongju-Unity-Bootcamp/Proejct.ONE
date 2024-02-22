using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HudHpSubItem : UISubItem
{
    enum Images
    {
        HpGaugeImage
    }

    enum Texts
    {
        CurrentHpText
    }
    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindText(typeof(Texts));

        Managers.Game.Character.currentHealth.BindModelEvent(UpdateHPGagueImage,this);

        Managers.Game.Character.currentHealth.BindModelEvent(UpdateCurHPText, this);
    }

    private void UpdateHPGagueImage(int currentHp)
    {
        float maxHp = Managers.Game.Character.currentHealth.Value;
        GetImage((int)Images.HpGaugeImage).fillAmount = currentHp / maxHp;
    }

    private void UpdateCurHPText(int currentHp)
    {
        GetText((int)Texts.CurrentHpText).text = currentHp.ToString();
    }
}
