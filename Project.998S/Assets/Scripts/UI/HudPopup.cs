using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HudPopup : UIPopup
{
    private List<UISubItem> _subItems;
    public override void Init()
    {
        Managers.UI.SetCanvas(gameObject, true);

        _subItems = new List<UISubItem>()
        {
            Managers.UI.OpenSubItem<HudHpSubItem>(transform)
        };

    }

    private void OnDestroy()
    {
        foreach (var subItem in _subItems)
        {
            subItem.CloseSubItem();
        }
    }
}
