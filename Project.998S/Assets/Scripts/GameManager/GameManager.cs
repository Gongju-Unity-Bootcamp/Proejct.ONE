using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager instance;
    public static AreaManager Area { get; private set; }
    public static DataManager Data { get; private set; }
    public static UIManager UI { get; private set; }
    public static SoundManager Sound { get; private set; }

    private void Awake()
    {
        Init();
    }

    private void Init()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);

            GameObject go;

            Area = new AreaManager();
            Data = new DataManager();
            UI = new UIManager();

            go = new GameObject(nameof(SoundManager));
            go.transform.parent = transform;
            Sound = go.AddComponent<SoundManager>();

            Area.Init();
            Data.Init();
            UI.Init();
            Sound.Init();

            return;
        }
        
        Destroy(gameObject);
    }
}
