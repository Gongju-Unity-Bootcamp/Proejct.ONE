public class UIPopup : UserInterface
{
    #region Methods
    /// <summary>
    /// 인터페이스 팝업 생성을 위한 메소드입니다.
    /// </summary>
    public override void Init()
    {
        base.Init();

        Managers.UI.SetCanvas(gameObject);
    }

    /// <summary>
    /// 인터페이스 팝업 종료를 위한 메소드입니다.
    /// </summary>
    public virtual void ClosePopupUI()
    {
        Managers.UI.ClosePopupUI(this);
    }
    #endregion
}
