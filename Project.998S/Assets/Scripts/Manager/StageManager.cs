using System;
using System.Collections.Generic;
using System.Linq;
using UniRx;
using UnityEngine;

public class StageManager : MonoBehaviour
{
    #region DataStructures
    [HideInInspector] public List<Character> players, enemies, previews;
    [HideInInspector] public Queue<Dictionary<CharacterID, Character>> turnQueue;
    #endregion

    #region Fields
    private const int PREVIEW = 1, MAX_CHARACTER_COUNT = 3;

    [HideInInspector] public ReactiveProperty<int> turnCount;
    [HideInInspector] public ReactiveProperty<CharacterID> turnCharacterID;
    [HideInInspector] public ReactiveProperty<Character> turnCharacter;

    [HideInInspector] public ReactiveProperty<Character> selectCharacter;

    private GameObject dungeon, spawnPoint;
    #endregion

    public void Init()
    {
        players = enemies = previews = new List<Character>();
        turnQueue = new Queue<Dictionary<CharacterID, Character>>();

        turnCount = new ReactiveProperty<int>(0);
        turnCharacterID = new ReactiveProperty<CharacterID>();
        turnCharacter = new ReactiveProperty<Character>();

        selectCharacter = new ReactiveProperty<Character>();
    }

    #region Create Dungeon In Stage Methods
    public void CreateDungeon(StageID id)
    {
        dungeon = Managers.Resource.Instantiate(Managers.Data.Game[(int)GameAssetName.Dungeon].Prefab);
        spawnPoint = Managers.Resource.Instantiate(Managers.Data.Game[(int)GameAssetName.Spawn].Prefab);

        players = ResetCharacter(players, 0, new CharacterID[MAX_CHARACTER_COUNT] { 
            (CharacterID)1001, 
            (CharacterID)0,
            (CharacterID)1002 
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
            GameObject spawnObject = Managers.Spawn.CharacterByID(id[index], position + index);

            if (spawnObject == null)
            {
                continue;
            }

            if (type < 2)
            {
                Character character = spawnObject.GetComponentAssert<Character>();
                character.Init(id[index]);
                characters.Add(character);

                turnQueue.Enqueue(Utils.ReturnDictionary(id[index], character));
            }
        }

        return characters;
    }
    #endregion

    //#region Update Turn In Stage Methods
    //private void UpdateTurnAsObservable()
    //{
    //    this.UpdateAsObservable()
    //        .Where(_ => true == isTurnSequenceStart.Value)
    //        .Subscribe(_ =>
    //        {
    //            isTurnSequenceStart.Value = false;

    //            Character character = NextCharacter();

    //            if (IsPlayerType(character))
    //            {
    //                PlayerTurn();
    //            }
    //            else
    //            {
    //                EnemyTurn();
    //            }
    //        });
    //}

    //private Character NextCharacter()
    //{
    //    KeyValuePair<CharacterID, Character> dictionary = turnQueue.Dequeue().First();

    //    turnCharacterID.Value = dictionary.Key;
    //    turnCharacter.Value = dictionary.Value;
    //    turnQueue.Enqueue(Utils.ReturnDictionary(dictionary.Key, dictionary.Value));

    //    return turnCharacter.Value;
    //}

    //private void PlayerTurn()
    //{
    //    UpdateClickCharacter();
    //}

    //private void EnemyTurn()
    //{
    //    Debug.Log($"{turnCharacter.Value}");
    //    ResetUpdateTurn();
    //}

    //private void ResetUpdateTurn()
    //{
    //    isTurnSequenceStart.Value = true;
    //}
    //#endregion
}
