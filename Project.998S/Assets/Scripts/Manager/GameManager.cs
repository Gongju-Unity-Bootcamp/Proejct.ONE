using UniRx;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    [HideInInspector] public ReactiveProperty<int> round { get; set; }
    [HideInInspector] public ReactiveProperty<Character> selectCharacter { get; set; }
    [HideInInspector] public Target target { get; set; }

    public void Init()
    {
        selectCharacter = new ReactiveProperty<Character>();

        GameObject go = new GameObject(nameof(Controller));
        go.AddComponent<PlayerController>();
        go.AddComponent<EnemyController>();

        GamePrefabData data = Managers.Data.GamePrefab[GamePrefabID.Highlight];

        //Managers.Stage.enemies[0].currentHealth.Value = 0;
        //Managers.Stage.enemies[0].currentAttack.Value = 0;
        //Managers.Stage.players[0].currentHealth.Value = 0;
        //Managers.Stage.players[0].currentAttack.Value = 0;
        

        GamePlay((StageID)1 , data);

        Managers.UI.OpenPopup<HudPopup>();
    }

    public void GamePlay(StageID id, GamePrefabData data)
    {
        Managers.Stage.CreateDungeon(id);
        Managers.Stage.UpdateTurnAsObservable();
        UpdateSelectCharacterAsObservable(data);

        
    }

    private void UpdateSelectCharacterAsObservable(GamePrefabData data)
    {
        target = CreateHighlight(data).GetComponentAssert<Target>();
        target.transform.position = Managers.Spawn.footboards[SpawnManager.ENEMY_CENTER];
        selectCharacter.Value = Managers.Stage.enemies[Managers.Stage.PREVIEW].GetCharacterInGameObject<Character>();

        selectCharacter.Subscribe(character =>
        {
            if (character == null)
            {
                return;
            }

            Debug.Log($"[GameManager] Selected character : {selectCharacter.Value.gameObject.transform.position.x}, {selectCharacter.Value}");

            SelectTarget(character);
            Managers.Stage.turnCharacter.Value.LookAtTarget(character.transform);
            target.gameObject.SetActive(true);
        });
    }
    public void SelectTarget(Character character)
    {
        target.transform.position = character.transform.position;
        target.gameObject.SetActive(false);
    }

    private GameObject CreateHighlight(GamePrefabData data)
        => Managers.Resource.Instantiate(data.Prefab);


}
