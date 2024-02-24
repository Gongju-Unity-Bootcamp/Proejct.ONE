using System.Collections.Generic;
using UnityEngine;

public class PlayersSubItem : UISubItem
{
    [HideInInspector] public List<UISubItem> subItems { get; private set; }
        
    public override void Init()
    {
        base.Init();

        subItems = new List<UISubItem>();

        foreach (Player character in Managers.Stage.players)
        {
            subItems.Add(Managers.UI.OpenSubItem<PlayerHUDSubItem>(transform));
        }
    }
}
