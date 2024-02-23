using System.Collections;
using System.Collections.Generic;
using UniRx;
using UnityEngine;

public class EnemyHUDHpSubItem : UISubItem
{
    enum Images
    {
        EnemyHpBar
    }

    enum Texts
    {
        EnemyCurrentHpText,
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

        Debug.Log($"{index}");

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateHPGagueImage,this);
        Managers.Stage.enemies[0].currentHealth.BindModelEvent(UpdateHPGaugeImage, this);

        //Managers.Game.enemy.currentHealth.BindModelEvent(UpdateCurHPText, this);
        Managers.Stage.enemies[0].currentHealth.BindModelEvent(UpdateCurHPText, this);
    }

    private void UpdateHPGaugeImage(int currentHp)
    {
        float maxHp = Managers.Stage.enemies[0].currentHealth.Value = 0;
        GetImage((int)Images.EnemyHpBar).fillAmount = currentHp / maxHp;
    }

    private void UpdateCurHPText(int currentHp)
    {
        GetText((int)Texts.EnemyCurrentHpText).text = currentHp.ToString();
    }
}
