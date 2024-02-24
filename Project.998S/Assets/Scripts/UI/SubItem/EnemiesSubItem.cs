using System.Collections.Generic;
using UnityEngine;

public class EnemiesSubItem : UISubItem
{
    [HideInInspector] public List<UISubItem> subItems { get; private set; }

    public override void Init()
    {
        base.Init();

        subItems = new List<UISubItem>();

        foreach (Enemy character in Managers.Stage.enemies)
        {
            subItems.Add(Managers.UI.OpenSubItem<EnemyHUDSubItem>(transform));
        }
    }
}