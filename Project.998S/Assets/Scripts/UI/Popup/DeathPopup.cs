using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class DeathPopup : UIPopup
{
    private enum Images
    {
        Background
    }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));

        GetImage((int)Images.Background).BindViewEvent(ReturnTitle, ViewEvent.LeftClick, this);
    }

    private void ReturnTitle(PointerEventData eventData)
    {
        // NOTE : 현재 게임은 동적으로 재시작할 수 있는 환경이 아님
        // 따라서 게임 종료
        Application.Quit();
    }
}