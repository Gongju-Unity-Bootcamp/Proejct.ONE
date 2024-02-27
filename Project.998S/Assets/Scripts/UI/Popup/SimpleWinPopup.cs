using UnityEngine.EventSystems;

public class SimpleWinPopup : UIPopup
{
    private enum Images
    {
        Background
    }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));

        GetImage((int)Images.Background).BindViewEvent(ProcessExit, ViewEvent.LeftClick, this);
    }

    private void ProcessExit(PointerEventData eventData)
    {
        Managers.Game.NextRound();
    }
}