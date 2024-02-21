using System;
using Object = UnityEngine.Object;
using UnityEngine;
using System.Collections.Generic;

public static class Utils
{
    public static T FindChild<T>(GameObject go, string name = null, bool recursive = false) where T : Object
    {
        if (true == (go == null))
        {
            throw new InvalidOperationException($"GameObject is null.");
        }

        if (false == recursive)
        {
            return go.transform.FindAssert(name).GetComponentAssert<T>();
        }
        else
        {
            foreach (T component in go.GetComponentsInChildren<T>())
            {
                if (false == string.IsNullOrEmpty(name) && false == (component.name == name)) 
                { 
                    continue; 
                }

                return component;
            }
        }

        throw new InvalidOperationException($"Child {typeof(T).Name} not found.");
    }

    public static GameObject FindChild(GameObject go, string name = null, bool recursive = false)
    {
        return FindChild<Transform>(go, name, recursive).gameObject;
    }

    public static Dictionary<T, U> ReturnDictionary<T, U>(T key, U value)
    {
        return new Dictionary<T, U>() { { key, value } };
    }

    public static List<T> ReturnList<T, U>(T value)
    {
        return new List<T>() { { value } };
    }
}