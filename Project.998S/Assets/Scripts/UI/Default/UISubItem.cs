public class UISubItem : UserInterface
{
    public override void Init()
    {
        base.Init();

        Managers.UI.SetCanvas(gameObject, false);
    }
    public virtual void CloseSubItem()
    {
        Managers.Resource.Destroy(gameObject);
    }
}