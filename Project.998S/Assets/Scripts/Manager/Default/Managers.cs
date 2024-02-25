using UnityEngine;

public class Managers : MonoBehaviour
{
    private static Managers Instance;

    public static DataManager Data { get; private set; }
    public static StorageManager Storage { get; private set; }
    public static ResourceManager Resource { get; private set; }
    public static SpawnManager Spawn { get; private set; }
    public static StageManager Stage { get; private set; }
    public static SoundManager Sound { get; private set; }
    public static UIManager UI { get; private set; }
    public static GameManager Game { get; private set; }

    private void Awake()
    {
        Init();
    }

    private void Init()
    {
        if (Instance != null)
        {
            Destroy(this);
            return;
        }

        Instance = this;
        DontDestroyOnLoad(this);

        GameObject gameObject;

        Data = new DataManager();
        Storage = new StorageManager();
        Resource = new ResourceManager();
        Spawn = new SpawnManager();

        gameObject = new GameObject(nameof(StageManager));
        gameObject.transform.parent = transform;
        Stage = gameObject.AddComponent<StageManager>();

        gameObject = new GameObject(nameof(SoundManager));
        gameObject.transform.parent = transform;
        Sound = gameObject.AddComponent<SoundManager>();

        UI = new UIManager();

        gameObject = new GameObject(nameof(GameManager));
        gameObject.transform.parent = transform;
        Game = gameObject.AddComponent<GameManager>();

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
