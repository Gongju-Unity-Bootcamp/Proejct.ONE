using System.Collections.Generic;
using System;
using TMPro;
using UniRx.Triggers;
using UniRx;
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
    private Dictionary<Type, Object[]> objects = new Dictionary<Type, Object[]>();

    public virtual void Init()
    {

    }

    private void Start() => Init();

    protected void Bind<T>(Type type) where T : Object
    {
        string[] names = Enum.GetNames(type);
        Object[] newObjects = new Object[names.Length];
        objects.Add(typeof(T), newObjects);

        for (int i = 0; i < names.Length; ++i)
        {
            if (typeof(T) == typeof(GameObject))
            {
                newObjects[i] = Utils.FindChild(gameObject, names[i], true);
            }
            else
            {
                newObjects[i] = Utils.FindChild<T>(gameObject, names[i], true);
            }
        }
    }

    /// <summary>
    /// 게임 오브젝트 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 게임 오브젝트</param>
    protected void BindObject(Type type) 
        => Bind<GameObject>(type);

    /// <summary>
    /// 로우 이미지 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 로우 이미지</param>
    protected void BindRawImage(Type type) 
        => Bind<RawImage>(type);

    /// <summary>
    /// 이미지 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 이미지</param>
    protected void BindImage(Type type) 
        => Bind<Image>(type);

    /// <summary>
    /// 텍스트 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 텍스트</param>
    protected void BindText(Type type) 
        => Bind<TMP_Text>(type);

    /// <summary>
    /// 버튼 등록을 위한 메소드입니다.
    /// </summary>
    /// <param name="type">바인딩 버튼</param>
    protected void BindButton(Type type) 
        => Bind<Button>(type);

    protected T Get<T>(int index) where T : Object
    {
        if (objects.TryGetValue(typeof(T), out Object[] newObjects))
        {
            return newObjects[index] as T;
        }

        throw new InvalidOperationException($"Failed to Get({typeof(T)}, {index}). Binding must be completed first.");
    }

    /// <summary>
    /// 게임 오브젝트를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    protected GameObject GetObject(int index) 
        => Get<GameObject>(index);

    /// <summary>
    /// 로우 이미지를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    protected RawImage GetRawImage(int index)
        => Get<RawImage>(index);

    /// <summary>
    /// 이미지를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    protected Image GetImage(int index) 
        => Get<Image>(index);

    /// <summary>
    /// 텍스트를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    protected TMP_Text GetText(int index) 
        => Get<TMP_Text>(index);

    /// <summary>
    /// 버튼을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="index">인덱스 번호</param>
    protected Button GetButton(int index) 
        => Get<Button>(index);

    /// <summary>
    /// 관찰자의 이벤트를 등록하기 위한 메소드입니다.
    /// </summary>
    /// <param name="view">관찰자</param>
    /// <param name="action">액션 이벤트</param>
    /// <param name="type">관찰자 타입</param>
    /// <param name="component">컴포넌트</param>
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

    /// <summary>
    /// 반응형 변수의 이벤트를 등록하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="model">반응형 변수</param>
    /// <param name="action">액션 이벤트</param>
    /// <param name="component">컴포넌트</param>
    public static void BindModelEvent<T>(ReactiveProperty<T> model, Action<T> action, Component component)
       => model.Subscribe(action).AddTo(component);
}
