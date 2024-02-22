using System;
using System.Collections.Generic;
using TMPro;
using UniRx;
using UniRx.Triggers;
using Object = UnityEngine.Object;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine;

public enum ViewEvent
{
    Click,
    Enter
}

public abstract class UserInterface : MonoBehaviour
{
    private Dictionary<Type, Object[]> _objects = new Dictionary<Type, Object[]>();

    public virtual void Init()
    {

    }

    private void Start() => Init();

    protected void Bind<T>(Type type) where T : Object
    {
        string[] names = Enum.GetNames(type);
        Object[] objects = new Object[names.Length];
        _objects.Add(typeof(T), objects);

        for (int i = 0; i < names.Length; ++i)
        {
            if (typeof(T) == typeof(GameObject))
            {
                objects[i] = Utils.FindChild(gameObject, names[i], true);
            }
            else
            {
                objects[i] = Utils.FindChild<T>(gameObject, names[i], true);
            }
        }
    }

    /// <summary>
    /// 게임 오브젝트 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 게임 오브젝트</param>
    protected void BindObject(Type type) => Bind<GameObject>(type);

    /// <summary>
    /// 이미지 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 이미지</param>
    protected void BindImage(Type type) => Bind<Image>(type);

    /// <summary>
    /// 텍스트 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 텍스트</param>
    protected void BindText(Type type) => Bind<TMP_Text>(type);

    /// <summary>
    /// 버튼 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 버튼</param>
    protected void BindButton(Type type) => Bind<Button>(type);

    protected T Get<T>(int index) where T : Object
    {
        if (_objects.TryGetValue(typeof(T), out Object[] objects))
        {
            return objects[index] as T;
        }

        throw new InvalidOperationException($"Failed to Get({typeof(T)}, {index}). Binding must be completed first.");
    }

    /// <summary>
    /// 게임 오브젝트 반환을 위한 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    /// <returns></returns>
    protected GameObject GetObject(int index) => Get<GameObject>(index);
    /// <summary>
    /// 이미지 반환을 위한 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    /// <returns></returns>
    protected Image GetImage(int index) => Get<Image>(index);
    /// <summary>
    /// 텍스트 반환을 위한 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    /// <returns></returns>
    protected TMP_Text GetText(int index) => Get<TMP_Text>(index);
    /// <summary>
    /// 버튼 반환을 위한 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    /// <returns></returns>
    protected Button GetButton(int index) => Get<Button>(index);

    public static void BindViewEvent(UIBehaviour view, Action<PointerEventData> action, ViewEvent type, Component component)
    {
        switch (type)
        {
            case ViewEvent.Click:
                view.OnPointerClickAsObservable().Subscribe(action).AddTo(component);
                break;
            case ViewEvent.Enter:
                view.OnPointerEnterAsObservable().Subscribe(action).AddTo(component);
                break;
        };
    }

    public static void BindModelEvent<T>(ReactiveProperty<T> model, Action<T> action, Component component)
       => model.Subscribe(action).AddTo(component);
}
