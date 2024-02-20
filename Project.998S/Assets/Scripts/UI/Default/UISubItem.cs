public class UISubItem : UserInterface
{
    public override void Init()
    {
        base.Init();

        GameManager.UI.SetCanvas(gameObject, false);
    }
    public virtual void CloseSubItem()
    {
        GameManager.Resource.Destroy(gameObject);
    }
}