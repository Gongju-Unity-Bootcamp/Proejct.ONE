using UniRx;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    #region Fields
    [HideInInspector] public PlayerController PlayerController;
    [HideInInspector] public ReactiveProperty<Player> selectPlayerCharacter { get; private set; }
    [HideInInspector] public ReactiveProperty<Enemy> selectEnemyCharacter { get; private set; }
    public Character Character { get; private set; }
    private GameObject highlight;
    #endregion

    public void Init()
    {
        selectPlayerCharacter = new ReactiveProperty<Player>();
        selectEnemyCharacter = new ReactiveProperty<Enemy>();

        GameObject go = new GameObject(nameof(PlayerController));
        go.transform.parent = transform;
        PlayerController = go.AddComponent<PlayerController>();

        PlayerController.Init();

        Managers.Stage.CreateDungeon((StageID)1);
        UpdateSelectCharacterAsObservable();
    }

    private void UpdateSelectCharacterAsObservable()
    {
        highlight = Managers.Resource.Instantiate(Managers.Data.Game[(int)GameAssetName.Highlight].Prefab);
        highlight.SetActive(false);

        selectPlayerCharacter.Subscribe(value =>
        {
            if (value == null)
            {
                return;
            }

            if (highlight.transform.position != value.transform.position)
            {
                highlight.SetActive(true);
                highlight.transform.position = value.transform.position;
            }
        });

        selectEnemyCharacter.Subscribe(value =>
        {
            if (value == null)
            {
                return;
            }

            if (highlight.transform.position != value.transform.position)
            {
                highlight.SetActive(true);
                highlight.transform.position = value.transform.position;
            }
        });
    }
}
