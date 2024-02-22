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

    public void SetCanvas(GameObject go, bool sort = true)
    {
        Canvas canvas = go.GetComponentAssert<Canvas>();
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

    public T OpenPopup<T>(Transform parent = null) where T : UIPopup
    {
        T popup = SetupUI<T>(parent);

        popupStack.Push(popup);

        return popup;
    }

    public T OpenSubItem<T>(Transform parent = null) where T : UISubItem
        => SetupUI<T>(parent);

    private T SetupUI<T>(Transform parent = null) where T : UserInterface
    {
        GameObject prefab = Managers.Resource.LoadPrefab(typeof(T).Name);
        GameObject go = Managers.Resource.Instantiate(prefab);

        if (parent != null)
        {
            go.transform.SetParent(parent);
        }
        else
        {
            go.transform.SetParent(UIRoot.transform);
        }

        go.transform.localScale = DEFAULT_SCALE;
        go.transform.localPosition = prefab.transform.position;

        return go.GetComponentAssert<T>();
    }

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

    public void CloseAllPopupUI()
    {
        while (popupStack.Count > 0)
        {
            ClosePopupUI();
        }
    }
}
