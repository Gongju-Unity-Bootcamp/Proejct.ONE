public class UISubItem : UserInterface
{
    /// <summary>
    /// 인터페이스 허드 생성을 위한 메소드입니다.
    /// </summary>
    public override void Init()
    {
        base.Init();

        Managers.UI.SetCanvas(gameObject, false);
    }

    /// <summary>
    /// 인터페이스 허드 종료를 위한 메소드입니다.
    /// </summary>
    public virtual void CloseSubItem() 
        => Managers.Resource.Destroy(gameObject);
}