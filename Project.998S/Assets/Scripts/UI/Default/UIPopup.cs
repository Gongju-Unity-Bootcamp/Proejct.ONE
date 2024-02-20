public class UIPopup : UserInterface
{
    public override void Init()
    {
        base.Init();

        GameManager.UI.SetCanvas(gameObject);
    }
    public virtual void ClosePopupUI()
    {
        GameManager.UI.ClosePopupUI(this);
    }
}
