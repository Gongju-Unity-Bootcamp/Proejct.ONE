using System;
using System.Collections.Generic;
using UnityEngine;

public class HudPopup : UIPopup
{
    public enum Objects 
    {
        EnemyHUDHealthSubItem1, 
        EnemyHUDHealthSubItem2,
        EnemyHUDHealthSubItem3
    }

    private List<UISubItem> _subItems;

    public override void Init()
    {
        base.Init();

        BindObject(typeof(Objects));

        Managers.UI.SetCanvas(gameObject, false);

        _subItems = new List<UISubItem>()
        {
            Managers.UI.OpenSubItem<EnemyHUDHpSubItem>(transform),
            Managers.UI.OpenSubItem<PlayerHUDHpSubItem>(transform)
        };


        foreach (Objects objectIndex in Enum.GetValues(typeof(Objects)))
        {
            GameObject gameObject = GetObject((int)objectIndex);
            EnemyHUDHpSubItem enemyHudHp;

            if (gameObject.TryGetComponent<EnemyHUDHpSubItem>(out enemyHudHp))
            {
                enemyHudHp.index = (int)objectIndex;
            }
        }
    }

    private void OnDestroy()
    {
        foreach (var subItem in _subItems)
        {
            subItem.CloseSubItem();
        }
    }
}
