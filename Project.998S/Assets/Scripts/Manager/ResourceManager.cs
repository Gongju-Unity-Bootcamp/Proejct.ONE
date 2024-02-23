using System.Collections.Generic;
using Object = UnityEngine.Object;
using UnityEngine.UI;
using UnityEngine;

public class ResourceManager
{
    public Dictionary<string, Animator> Animators { get; private set; }
    public Dictionary<string, Texture> Textures { get; private set; }
    public Dictionary<string, Image> Images { get; private set; }
    public Dictionary<string, Material> Materials { get; private set; }
    public Dictionary<string, GameObject> Prefabs { get; private set; }
    public Dictionary<string, Sprite> Sprites { get; private set; }

    public void Init()
    {
        Animators = new Dictionary<string, Animator>();
        Textures = new Dictionary<string, Texture>();
        Images = new Dictionary<string, Image>();
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

    /// <summary>
    /// 데이터 파일 경로를 통해 애니메이터을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public Animator LoadAnimator(string path) 
        => Load(Animators, string.Concat(Define.Path.ANIMATOR, path));

    /// <summary>
    /// 데이터 파일 경로를 통해 텍스쳐를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public Image LoadTexture(string path) 
        => Load(Images, string.Concat(Define.Path.TEXTURE, path));

    /// <summary>
    /// 데이터 파일 경로를 통해 이미지를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public Image LoadImage(string path) 
        => Load(Images, string.Concat(Define.Path.IMAGE, path));

    /// <summary>
    /// 데이터 파일 경로를 통해 머티리얼을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public Material LoadMaterial(string path) 
        => Load(Materials, string.Concat(Define.Path.MATERIAL, path));
    
    /// <summary>
    /// 데이터 파일 경로를 통해 프리팹을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public GameObject LoadPrefab(string path) 
        => Load(Prefabs, string.Concat(Define.Path.PREFAB, path));

    /// <summary>
    /// 데이터 파일 경로를 통해 스프라이트를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path">데이터 파일 경로</param>
    public Sprite LoadSprite(string path) 
        => Load(Sprites, string.Concat(Define.Path.SPRITE, path));

    /// <summary>
    /// 프리팹 파일 경로를 기준으로 프리팹을 생성하여 반환하는 메소드입니다.
    /// </summary>
    /// <param name="path"></param>
    /// <param name="parent"></param>
    public GameObject Instantiate(string path, Transform parent = null)
    {
        GameObject prefab = LoadPrefab(path);

        Debug.Assert(prefab != null);

        return Instantiate(prefab, parent);
    }

    /// <summary>
    /// 부모 트랜스폼을 기준으로 프리팹을 생성하여 반환하는 메소드입니다.
    /// </summary>
    /// <param name="prefab">프리팹</param>
    /// <param name="parent">부모 트랜스폼</param>
    public GameObject Instantiate(GameObject prefab, Transform parent = null)
    {
        GameObject gameObject = Object.Instantiate(prefab, parent);

        gameObject.name = prefab.name;

        return gameObject;
    }

    /// <summary>
    /// 생성된 게임 오브젝트를 파괴하는 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public void Destroy(GameObject gameObject)
    {
        if (gameObject != null)
        {
            Object.Destroy(gameObject);
        }
    }
}
