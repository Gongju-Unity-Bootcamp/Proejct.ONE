using System.Collections;
using System.Collections.Generic;
using UniRx;
using UnityEngine;

public class PlayerHUDHpSubItem : UISubItem
{
    enum Images
    {
        PlayerHpBar
    }

    enum Texts
    {
        PlayerCurrentHpText,
        LevelText,
        LargePlayerCurrentHpText

    }

    [HideInInspector] public int index { get; set; }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindText(typeof(Texts));

        Debug.Log($"{index}");

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateHPGagueImage,this);
        Managers.Stage.players[0].currentHealth.BindModelEvent(UpdateHPGaugeImage, this);

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateCurHPText, this);
        Managers.Stage.players[0].currentHealth.BindModelEvent(UpdateHPText, this);
    }

    private void UpdateHPGaugeImage(int currentHp)
    {
        float maxHp = Managers.Stage.players[0].currentHealth.Value = 0;
        GetImage((int)Images.PlayerHpBar).fillAmount = currentHp / maxHp;
    }

    private void UpdateHPText(int currentHp)
    {
        GetText((int)Texts.PlayerCurrentHpText).text = currentHp.ToString();
        GetText((int)Texts.LargePlayerCurrentHpText).text = currentHp.ToString();
    }
}
