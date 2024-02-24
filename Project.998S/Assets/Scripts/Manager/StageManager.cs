using System.Collections.Generic;
using System;
using UniRx;
using UnityEngine;
using static Utils;

public class StageManager : MonoBehaviour
{
    [HideInInspector] public List<Character> players, enemies, previews;
    [HideInInspector] public Queue<Character> turnQueue;

    public readonly int PREVIEW = 1;
    public const int PLAYER_INDEX = 0, ENEMY_INDEX = 1, PREVIEW_INDEX = 2,
                     MAX_CHARACTER_COUNT = 3;

    [HideInInspector] public ReactiveProperty<bool> isPlayerTurn { get; set; }
    [HideInInspector] public ReactiveProperty<bool> isEnemyTurn { get; set; }

    [HideInInspector] public ReactiveProperty<int> turnCount { get; set; }
    [HideInInspector] public ReactiveProperty<Character> turnCharacter { get; set; }

    private Animator door;

    public void Init()
    {
        players = new List<Character>();
        enemies = new List<Character>();
        previews = new List<Character>();

        turnQueue = new Queue<Character>();

        isPlayerTurn = new ReactiveProperty<bool>();
        isEnemyTurn = new ReactiveProperty<bool>();

        turnCount = new ReactiveProperty<int>();
        turnCharacter = new ReactiveProperty<Character>();
    }

    public void CreateDungeon(StageID id)
    {
        string dungeonPrefabPath = Managers.Data.Prefab[(int)PrefabID.Dungeon].Prefab;
        string spawnPrefabPath = Managers.Data.Prefab[(int)PrefabID.Spawn].Prefab;

        GameObject dungeon = Managers.Resource.Instantiate(dungeonPrefabPath);
        GameObject spawn = Managers.Resource.Instantiate(spawnPrefabPath);

        door = dungeon.transform.Find("hildebrantDoor").GetComponentAssert<Animator>();

        players = ResetCharacter(PLAYER_INDEX, players, ReturnArray<CharacterID>
        (
            (CharacterID)1001,
            (CharacterID)1002,
            (CharacterID)1003
        ));
        enemies = ResetCharacter(ENEMY_INDEX, enemies, ReturnArray<CharacterID>
        (
            (CharacterID)Managers.Data.Stage[id].Left,
            (CharacterID)Managers.Data.Stage[id].Center,
            (CharacterID)Managers.Data.Stage[id].Right
        ));
        previews = ResetCharacter(PREVIEW_INDEX, previews, ReturnArray<CharacterID>
        (
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Left,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Center,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Right
        ));

        turnCount.Value = 0;
    }

    public void NextDungeon(StageID id)
    {
        door.SetTrigger(AnimatorParameter.OpenDoor);
    }

    private List<Character> ResetCharacter(int type, List<Character> characters = null, params CharacterID[] id)
    {
        characters.Clear();
        int position = default;

        switch (type)
        {
            case PLAYER_INDEX:
                position = SpawnManager.PLAYER_LEFT;
                break;
            case ENEMY_INDEX:
                position = SpawnManager.ENEMY_LEFT;
                break;
            case PREVIEW_INDEX:
                position = SpawnManager.PREVIEW_LEFT;
                break;
        }

        for (int index = 0; index < id.Length; ++index)
        {
            Character character = Managers.Spawn.CharacterByID(id[index], position + index);

            if (character == null)
            {
                continue;
            }

            if (type < 2)
            {
                character.Init(id[index]);
                characters.Add(character);

                turnQueue.Enqueue(character);
            }
        }

        if (type == 0)
        {
            foreach (Character character in previews)
            {
                character.gameObject.SetActive(false);
            }
        }

        return characters;
    }

    public void UpdateTurnAsObservable()
    {
        turnCount.Subscribe(value =>
        {
            turnCharacter.Value = turnQueue.Dequeue();

            Managers.UI.OpenPopup<PlayerActionPopup>();

            if (true == turnCharacter.Value.IsCharacterDead())
            {
                NextTurn();

                return;
            }

            Type type = turnCharacter.Value.GetCharacterTypeInGameObject<Character>();
            ChangeTurn(type == typeof(Player));
            //AllCharacterLookAtTarget(turnCharacter.Value.transform, type == typeof(Player));

            Debug.Log($"[StageManager] : This character turn = {turnCharacter.Value.characterName}, {turnCharacter.Value}");
            turnQueue.Enqueue(turnCharacter.Value);
        });
    }

    private void ChangeTurn(bool isTypeCharacter)
    {
        isPlayerTurn.Value = isTypeCharacter;
        isEnemyTurn.Value = !isTypeCharacter;

        Managers.Game.selectCharacter.Value = null;
    }

    public void AllCharacterLookAtTarget(Transform target, bool isCharacterTurn)
    {
        List<Character> characters = new List<Character>();

        if (isCharacterTurn)
        {
            characters = enemies;
        }
        else
        {
            characters = players;
        }

        foreach (Character character in characters)
        {
            if (false == character.IsCharacterDead())
            {
                character.LookAtTarget(target);
            }
        }
    }

    public void NextTurn() 
        => ++turnCount.Value;
}
