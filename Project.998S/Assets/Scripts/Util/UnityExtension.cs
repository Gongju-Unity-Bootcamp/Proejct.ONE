using UnityEngine;

public static class UnityExtensions
{
    public static Transform FindAssert(this Transform transform, string name)
    {
        Transform newTransform = transform.Find(name);

        Debug.Assert(newTransform != null);

        return newTransform;
    }
    public static T GetComponentAssert<T>(this GameObject gameObject)
    {
        T component = gameObject.GetComponent<T>();

        Debug.Assert(component != null);

        return component;
    }
    public static T GetComponentAssert<T>(this Transform transform)
    {
        T component = transform.GetComponent<T>();

        Debug.Assert(component != null);

        return component;
    }
    public static T GetComponentInChildrenAssert<T>(this GameObject gameObject)
    {
        T component = gameObject.GetComponentInChildren<T>();

        Debug.Assert(component != null);

        return component;
    }
    public static T GetComponentInChildrenAssert<T>(this Transform transform)
    {
        T component = transform.GetComponentInChildren<T>();

        Debug.Assert(component != null);

        return component;
    }
}
