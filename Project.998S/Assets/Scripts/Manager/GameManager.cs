using UniRx;
using UnityEngine;
using static Utils;

public class GameManager : MonoBehaviour
{
    #region Fields
    [HideInInspector] public PlayerController PlayerController;
    [HideInInspector] public EnemyController EnemyController;
    [HideInInspector] public Target Target;

    [HideInInspector] public ReactiveProperty<int> round { get; private set; }
    [HideInInspector] public ReactiveProperty<Character> selectCharacter { get; private set; }
    #endregion

    public void Init()
    {
        selectCharacter = new ReactiveProperty<Character>();

        GameObject go = new GameObject(nameof(PlayerController));
        PlayerController = go.AddComponent<PlayerController>();
        go = new GameObject(nameof(EnemyController));
        EnemyController = go.AddComponent<EnemyController>();
        GamePrefabData data = Managers.Data.GamePrefab[GamePrefabID.Highlight];

        PlayerController.Init();
        EnemyController.Init();

        GamePlay((StageID)1 , data);
    }

    #region Gameplay Sequence
    public void GamePlay(StageID id, GamePrefabData data)
    {
        Managers.Stage.CreateDungeon(id);
        Managers.Stage.UpdateTurnAsObservable();
        UpdateSelectCharacterAsObservable(data);
    }
    #endregion

    #region Target Character Methods
    private void UpdateSelectCharacterAsObservable(GamePrefabData data)
    {
        Target = CreateHighlight(data).GetComponentAssert<Target>();
        Target.transform.position = Managers.Spawn.footboards[Managers.Spawn.ENEMY_CENTER];
        selectCharacter.Value = Managers.Stage.enemies[Managers.Stage.PREVIEW].GetCharacterInGameObject<Character>();

        selectCharacter.Subscribe(character =>
        {
            if (character == null)
            {
                return;
            }

            PlayerController.SelectTarget(character);
            Target.gameObject.SetActive(true);
        });
    }

    private GameObject CreateHighlight(GamePrefabData data)
    {
        return Managers.Resource.Instantiate(data.Prefab);
    }
    #endregion
}
