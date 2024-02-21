using UnityEngine;

public class Managers : MonoBehaviour
{
    #region Fields
    private static Managers Instance;

    public static DataManager Data { get; private set; }
    public static StorageManager Storage { get; private set; }
    public static ResourceManager Resource { get; private set; }
    public static SpawnManager Spawn { get; private set; }
    public static StageManager Stage { get; private set; }
    public static SoundManager Sound { get; private set; }
    public static UIManager UI { get; private set; }
    public static GameManager Game { get; private set; }
    #endregion

    private void Awake()
    {
        Init();
    }

    private void Init()
    {
        if (Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
        DontDestroyOnLoad(gameObject);

        GameObject go;

        Data = new DataManager();
        Storage = new StorageManager();
        Resource = new ResourceManager();
        Spawn = new SpawnManager();

        go = new GameObject(nameof(StageManager));
        go.transform.parent = transform;
        Stage = go.AddComponent<StageManager>();

        go = new GameObject(nameof(SoundManager));
        go.transform.parent = transform;
        Sound = go.AddComponent<SoundManager>();

        UI = new UIManager();

        go = new GameObject(nameof(GameManager));
        go.transform.parent = transform;
        Game = go.AddComponent<GameManager>();

        Data.Init();
        Storage.Init();
        Resource.Init();
        Spawn.Init();
        Stage.Init();
        Sound.Init();
        UI.Init();
        Game.Init();
    }
}
