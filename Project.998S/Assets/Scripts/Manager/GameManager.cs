using UniRx;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    [HideInInspector] public ReactiveProperty<int> round { get; set; }
    [HideInInspector] public ReactiveProperty<Character> selectCharacter { get; set; }
    [HideInInspector] public GameObject target { get; set; }

    public void Init()
    {
        selectCharacter = new ReactiveProperty<Character>();

        GameObject go = new GameObject(nameof(Controller));
        go.AddComponent<PlayerController>();
        go.AddComponent<EnemyController>();

        PrefabData data = Managers.Data.Prefab[(int)PrefabID.Highlight];

        GameStart((StageID)1 , data);
    }

    public void GameStart(StageID id, PrefabData data)
    {
        Managers.Stage.CreateDungeon(id);
        Managers.Stage.UpdateTurnAsObservable();
        Managers.UI.OpenPopup<HUDPopup>();
        UpdateSelectCharacterAsObservable(data);
    }

    private void UpdateSelectCharacterAsObservable(PrefabData data)
    {
        target = Managers.Resource.Instantiate(data.Prefab);
        target.transform.position = Managers.Spawn.footboards[SpawnManager.ENEMY_CENTER];
        selectCharacter.Value = Managers.Stage.enemies[Managers.Stage.PREVIEW].GetCharacterInGameObject<Character>();

        selectCharacter.Subscribe(character =>
        {
            if (character == null)
            {
                return;
            }

            selectCharacter.Value.ChangeCharacterState(CharacterState.Idle);
            Debug.Log($"[GameManager] Selected character : {selectCharacter.Value.gameObject.transform.position.x}, {selectCharacter.Value}");

            SelectTarget(character);
            target.gameObject.SetActive(true);
            Managers.Stage.turnCharacter.Value.LookAtTarget(character.transform);
        });
    }
    public void SelectTarget(Character character)
    {
        target.transform.position = character.transform.position;
        target.gameObject.SetActive(false);
    }
}
