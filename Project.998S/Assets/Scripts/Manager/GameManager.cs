using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager Instance;
    public static StoreManager Store { get; private set; }
    public static DataManager Data { get; private set; }
    public static ResourceManager Resource { get; private set; }
    public static SpawnManager Spawn { get; private set; }
    public static StageManager Stage { get; private set; }
    public static UIManager UI { get; private set; }
    public static SoundManager Sound { get; private set; }

    public static PlayerController Controller { get; private set; }

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

        Store = new StoreManager();
        Data = new DataManager();
        Resource = new ResourceManager();

        go = new GameObject(nameof(SpawnManager));
        go.transform.parent = transform;
        Spawn = go.AddComponent<SpawnManager>();

        go = new GameObject(nameof(StageManager));
        go.transform.parent = transform;
        Stage = go.AddComponent<StageManager>();

        UI = new UIManager();

        go = new GameObject(nameof(SoundManager));
        go.transform.parent = transform;
        Sound = go.AddComponent<SoundManager>();

        go = new GameObject(nameof(PlayerController));
        go.transform.parent = transform;
        Controller = go.AddComponent<PlayerController>();

        Store.Init();
        Data.Init();
        Resource.Init();
        Spawn.Init();
        Stage.Init();
        UI.Init();
        Sound.Init();
        Controller.Init();
    }
}
