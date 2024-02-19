using System.Collections.Generic;
using Object = UnityEngine.Object;
using UnityEngine;

public class ResourceManager
{
    public Dictionary<string, GameObject> Prefabs { get; private set; }

    public void Init()
    {
        Prefabs = new Dictionary<string, GameObject>();
    }

    public GameObject LoadPrefab(string path) => Load(Prefabs, path);

    private T Load<T>(Dictionary<string, T> dictionary, string path) where T : Object
    {
        if (false == dictionary.ContainsKey(path))
        {
            T resource = Resources.Load<T>(path);
            dictionary.Add(path, resource);

            return dictionary[path];
        }

        return dictionary[path];
    }

    public GameObject Instantiate(string path, Transform parent = null)
    {
        GameObject prefab = LoadPrefab(path);

        return Instantiate(prefab, parent);
    }

    public GameObject Instantiate(GameObject prefab, Transform parent)
    {
        GameObject go = Object.Instantiate(prefab, parent);

        go.name = prefab.name;

        return go;
    }

    public void Destroy(GameObject go)
    {
        if (go != null)
        {
            Object.Destroy(go);
        }
    }
}
