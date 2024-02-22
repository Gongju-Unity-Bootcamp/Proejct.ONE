using System.Collections.Generic;
using Object = UnityEngine.Object;
using UnityEngine.UI;
using UnityEngine;

public class ResourceManager
{
    public Dictionary<string, Animator> Animators { get; private set; }
    public Dictionary<string, Image> Icons { get; private set; }
    public Dictionary<string, Material> Materials { get; private set; }
    public Dictionary<string, GameObject> Prefabs { get; private set; }
    public Dictionary<string, Sprite> Sprites { get; private set; }

    public void Init()
    {
        Animators = new Dictionary<string, Animator>();
        Icons = new Dictionary<string, Image>();
        Materials = new Dictionary<string, Material>();
        Prefabs = new Dictionary<string, GameObject>();
        Sprites = new Dictionary<string, Sprite>();
    }

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

    public Animator LoadAnimator(string path) => Load(Animators, string.Concat(Define.Path.ANIMATOR, path));
    public Image LoadIcon(string path) => Load(Icons, string.Concat(Define.Path.ICON, path));
    public Material LoadMaterial(string path) => Load(Materials, string.Concat(Define.Path.MATERIAL, path));
    public GameObject LoadPrefab(string path) => Load(Prefabs, string.Concat(Define.Path.PREFAB, path));
    public Sprite LoadSprite(string path) => Load(Sprites, string.Concat(Define.Path.SPRITE, path));

    public GameObject Instantiate(string path, Transform parent = null)
    {
        GameObject prefab = LoadPrefab(path);

        Debug.Assert(prefab != null);

        return Instantiate(prefab, parent);
    }

    public GameObject Instantiate(GameObject prefab, Transform parent = null)
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
