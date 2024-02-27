using System;
using UniRx;
using UnityEngine.EventSystems;
using UnityEngine;

public static class Extensions
{
    /// <summary>
    /// 관찰자의 이벤트를 등록하기 위한 메소드입니다.
    /// </summary>
    /// <param name="view">관찰자</param>
    /// <param name="action">액션 이벤트</param>
    /// <param name="type">관찰자 타입</param>
    /// <param name="component">컴포넌트</param>
    public static void BindViewEvent(this UIBehaviour view, Action<PointerEventData> action, ViewEvent type, Component component)
        => UserInterface.BindViewEvent(view, action, type, component);

    /// <summary>
    /// 반응형 변수의 이벤트를 등록하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="model">반응형 모델</param>
    /// <param name="action">액션 이벤트</param>
    /// <param name="component">컴포넌트</param>
    public static void BindModelEvent<T>(this ReactiveProperty<T> model, Action<T> action, Component component)
        => UserInterface.BindModelEvent(model, action, component);
}
