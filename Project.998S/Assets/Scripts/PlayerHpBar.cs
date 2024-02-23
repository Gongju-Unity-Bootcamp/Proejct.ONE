using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHpBar : UISubItem
{
    enum Images
    {
        PcHpBar01
    }

    enum Texts
    {
        HpDamagedText,
        LevelText,
        AttackText,
        EnemyText
    }

    [HideInInspector] public int index { get; set; }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        BindText(typeof(Texts));

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateHPGagueImage,this);
        Managers.Stage.players[index].currentHealth.BindModelEvent(UpdateHPGaugeImage, this);

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateCurHPText, this);
        Managers.Stage.players[index].currentHealth.BindModelEvent(UpdateCurHPText, this);
    }

    private void UpdateHPGaugeImage(int currentHp)
    {
        float maxHp = Managers.Stage.players[index].currentHealth.Value = 0;
        GetImage((int)Images.PcHpBar01).fillAmount = currentHp / maxHp;
    }

    private void UpdateCurHPText(int currentHp)
    {
        GetText((int)Texts.HpDamagedText).text = currentHp.ToString();
    }
}
