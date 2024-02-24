using System.Collections.Generic;
using UnityEngine;

public class UIManager
{
    private Stack<UIPopup> popupStack;

    private static readonly Vector3 DEFAULT_SCALE = Vector3.one;
    private int currentCanvasOrder = -20;

    private GameObject UIRoot;

    public void Init()
    {
        popupStack = new Stack<UIPopup>();
        UIRoot = new GameObject(nameof(UIRoot));
    }

    /// <summary>
    /// 인터페이스 캔버스 컴포넌트를 등록하는 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    /// <param name="sort">정렬 여부</param>
    public void SetCanvas(GameObject gameObject, bool sort = true)
    {
        Canvas canvas = gameObject.GetComponentAssert<Canvas>();
        canvas.renderMode = RenderMode.ScreenSpaceOverlay;
        canvas.overrideSorting = true;

        if (true == sort)
        {
            canvas.sortingOrder = currentCanvasOrder;
            currentCanvasOrder += 1;
        }
        else
        {
            canvas.sortingOrder = 0;
        }
    }

    /// <summary>
    /// 팝업 인터페이스를 생성하는 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="parent">부모 트랜스폼</param>
    public T OpenPopup<T>(Transform parent = null) where T : UIPopup
    {
        T popup = SetupUI<T>(parent);

        popupStack.Push(popup);

        return popup;
    }

    /// <summary>
    /// 서브 아이템 인터페이스를 생성하는 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="parent">부모 트랜스폼</param>
    public T OpenSubItem<T>(Transform parent = null) where T : UISubItem
        => SetupUI<T>(parent);

    /// <summary>
    /// 인터페이스를 생성하는 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="parent">부모 트랜스폼</param>
    /// <returns></returns>
    private T SetupUI<T>(Transform parent = null) where T : UserInterface
    {
        GameObject prefab = Managers.Resource.LoadPrefab(typeof(T).Name);
        GameObject gameObject = Managers.Resource.Instantiate(prefab);

        if (parent != null)
        {
            gameObject.transform.SetParent(parent);
        }
        else
        {
            gameObject.transform.SetParent(UIRoot.transform);
        }

        gameObject.transform.localScale = DEFAULT_SCALE;
        gameObject.transform.localPosition = prefab.transform.position;

        return gameObject.GetComponentAssert<T>();
    }

    /// <summary>
    /// 스택에 등록된 하나의 팝업을 찾아 닫는 메소드입니다.
    /// </summary>
    /// <param name="popup">팝업 타입</param>
    public void ClosePopupUI(UIPopup popup)
    {
        if (popupStack.Count == 0)
        {
            return;
        }

        if (popupStack.Peek() != popup)
        {
            return;
        }

        ClosePopupUI();
    }

    /// <summary>
    /// 스택에 등록된 하나의 팝업을 꺼내 닫는 메소드입니다.
    /// </summary>
    public void ClosePopupUI()
    {
        if (popupStack.Count == 0)
        {
            return;
        }

        UIPopup popup = popupStack.Pop();
        Managers.Resource.Destroy(popup.gameObject);
        currentCanvasOrder -= 1;
    }

    /// <summary>
    /// 스택에 등록된 모든 팝업을 닫는 메소드입니다.
    /// </summary>
    public void CloseAllPopupUI()
    {
        while (popupStack.Count > 0)
        {
            ClosePopupUI();
        }
    }
}
