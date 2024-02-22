using System;
using System.Collections.Generic;
using System.Linq;
using UniRx;
using UnityEngine;
using static Utils;

public class StageManager : MonoBehaviour
{
    #region DataStructures
    [HideInInspector] public List<Character> players, enemies, previews;
    [HideInInspector] public Queue<Dictionary<CharacterID, Character>> turnQueue;
    #endregion

    #region Fields
    public readonly int PREVIEW = 1;
    public const int MAX_CHARACTER_COUNT = 3;

    [HideInInspector] public ReactiveProperty<bool> isPlayerTurn { get; private set; }
    [HideInInspector] public ReactiveProperty<bool> isEnemyTurn { get; private set; }

    [HideInInspector] public ReactiveProperty<int> turnCount { get; set; }
    [HideInInspector] public ReactiveProperty<CharacterID> turnCharacterID { get; set; }
    [HideInInspector] public ReactiveProperty<Character> turnCharacter { get; set; }

    private GameObject dungeon, spawnPoint;
    #endregion

    public void Init()
    {
        players = new List<Character>();
        enemies = new List<Character>();
        previews = new List<Character>();
        turnQueue = new Queue<Dictionary<CharacterID, Character>>();

        isPlayerTurn = new ReactiveProperty<bool>();
        isEnemyTurn = new ReactiveProperty<bool>();

        turnCount = new ReactiveProperty<int>();
        turnCharacterID = new ReactiveProperty<CharacterID>();
        turnCharacter = new ReactiveProperty<Character>();
    }

    #region Create Dungeon In Stage Methods
    public void CreateDungeon(StageID id)
    {
        dungeon = Managers.Resource.Instantiate(Managers.Data.GamePrefab[GamePrefabID.Dungeon].Prefab);
        spawnPoint = Managers.Resource.Instantiate(Managers.Data.GamePrefab[GamePrefabID.Spawn].Prefab);

        players = ResetCharacter(players, 0, new CharacterID[MAX_CHARACTER_COUNT] {
            (CharacterID)1001,
            (CharacterID)1002,
            (CharacterID)1003
        });
        enemies = ResetCharacter(enemies, 1, new CharacterID[MAX_CHARACTER_COUNT] {
            (CharacterID)Managers.Data.Stage[id].Left,
            (CharacterID)Managers.Data.Stage[id].Center,
            (CharacterID)Managers.Data.Stage[id].Right
        });
        previews = ResetCharacter(previews, 2, new CharacterID[MAX_CHARACTER_COUNT] {
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Left,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Center,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Right
        });

        turnCount.Value = 0;
    }

    public void NextDungeon(StageID id)
    {

    }

    private List<Character> ResetCharacter(List<Character> characters, int type, params CharacterID[] id)
    {
        characters.Clear();
        int position = default;

        switch (type)
        {
            case 0:
                position = Managers.Spawn.PLAYER_LEFT;
                break;
            case 1:
                position = Managers.Spawn.ENEMY_LEFT;
                break;
            case 2:
                position = Managers.Spawn.PREVIEW_LEFT;
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

                turnQueue.Enqueue(Utils.ReturnDictionary(id[index], character));
            }
        }

        return characters;
    }
    #endregion

    #region Update Turn In Stage Methods
    public void UpdateTurnAsObservable()
    {
        turnCount.Subscribe(value =>
        {
            KeyValuePair<CharacterID, Character> dictionary = turnQueue.Dequeue().First();

            turnCharacterID.Value = dictionary.Key;
            turnCharacter.Value = dictionary.Value;

            Type type = dictionary.Value.GetCharacterInGameObject<Character>().GetType();

            if (type == typeof(Player))
            {
                isPlayerTurn.Value = true;
                isEnemyTurn.Value = false;
            }

            if (type == typeof(Enemy))
            {
                isEnemyTurn.Value = true;
                isPlayerTurn.Value = false;
            }

            Debug.Log($"[StageManager] : 현재 턴 캐릭터 = {turnCharacter.Value.characterName}, {turnCharacter.Value}");

            turnQueue.Enqueue(ReturnDictionary(dictionary.Key, dictionary.Value));
        });
    }

    public void NextTurn()
    {
        Managers.Stage.turnCount.Value += 1;
    }
    #endregion
}
