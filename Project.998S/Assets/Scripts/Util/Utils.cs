using System;
using Object = UnityEngine.Object;
using UnityEngine;

public static class Utils
{
    public static T FindChild<T>(GameObject go, string name = null, bool recursive = false) where T : Object
    {
        if (go == null)
        {
            throw new InvalidOperationException($"GameObject is null.");
        }

        if (recursive == false)
        {
            return go.transform.FindAssert(name).GetComponentAssert<T>();
        }
        else
        {
            foreach (T component in go.GetComponentsInChildren<T>())
            {
                if (false == string.IsNullOrEmpty(name) && component.name != name) { continue; }

                return component;
            }
        }

        throw new InvalidOperationException($"Child {typeof(T).Name} not found.");
    }

    public static GameObject FindChild(GameObject go, string name = null, bool recursive = false)
    {
        return FindChild<Transform>(go, name, recursive).gameObject;
    }
}