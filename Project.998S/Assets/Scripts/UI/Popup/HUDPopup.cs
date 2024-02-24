using System.Collections.Generic;

public class HUDPopup : UIPopup
{
    private List<UISubItem> subItems;

    public override void Init()
    {
        Managers.UI.SetCanvas(gameObject, true);

        base.Init();

        subItems = new List<UISubItem>()
        {
            Managers.UI.OpenSubItem<PlayersSubItem>(transform),
            Managers.UI.OpenSubItem<EnemiesSubItem>(transform),
        };
    }
}
