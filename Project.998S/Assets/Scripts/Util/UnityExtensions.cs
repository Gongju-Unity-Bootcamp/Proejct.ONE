using UnityEngine;

public static class UnityExtensions
{
    #region Methods
    /// <summary>
    /// 트랜스폼 Find() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <param name="transform">트랜스폼</param>
    /// <param name="name">이름</param>
    /// <returns></returns>
    public static Transform FindAssert(this Transform transform, string name)
    {
        Transform newTransform = transform.Find(name);

        Debug.Assert(newTransform != null);

        return newTransform;
    }

    /// <summary>
    /// 게임오브젝트 GetComponent<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="gameObject">게임 오브젝트</param>
    /// <returns></returns>
    public static T GetComponentAssert<T>(this GameObject gameObject)
    {
        T component = gameObject.GetComponent<T>();

        Debug.Assert(component != null);

        return component;
    }

    /// <summary>
    /// 트랜스폼 GetComponent<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="transform">트랜스폼</param>
    /// <returns></returns>
    public static T GetComponentAssert<T>(this Transform transform)
    {
        T component = transform.GetComponent<T>();

        Debug.Assert(component != null);

        return component;
    }

    /// <summary>
    /// 컴포넌트 GetComponent<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="component">컴포넌트</param>
    /// <returns></returns>
    public static T GetComponentAssert<T>(this Component component)
    {
        T newComponent = component.GetComponent<T>();

        Debug.Assert(newComponent != null);

        return newComponent;
    }

    /// <summary>
    /// 게임오브젝트 GetComponentInChildren<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="gameObject">게임 오브젝트</param>
    /// <returns></returns>
    public static T GetComponentInChildrenAssert<T>(this GameObject gameObject)
    {
        T component = gameObject.GetComponentInChildren<T>();

        Debug.Assert(component != null);

        return component;
    }

    /// <summary>
    /// 트랜스폼 GetComponentInChildren<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="transform">트랜스폼</param>
    /// <returns></returns>
    public static T GetComponentInChildrenAssert<T>(this Transform transform)
    {
        T component = transform.GetComponentInChildren<T>();

        Debug.Assert(component != null);

        return component;
    }

    /// <summary>
    /// 컴포넌트 GetComponentInChildren<>() 참조 중에 발생하는 오류를 방지하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="component">컴포넌트</param>
    /// <returns></returns>
    public static T GetComponentInChildrenAssert<T>(this Component component)
    {
        T newComponent = component.GetComponentInChildren<T>();

        Debug.Assert(newComponent != null);

        return newComponent;
    }

    #endregion
}
