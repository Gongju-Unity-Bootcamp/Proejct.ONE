using System.Collections.Generic;
using UnityEngine;
using static Utils;

public class SpawnManager
{
    public readonly Vector3[] footboards = new Vector3[9]
    {
        new Vector3(-3, 0, -4), new Vector3(0, 0, -4), new Vector3(3, 0, -4),
        new Vector3(-3, 0, 4), new Vector3(0, 0, 4), new Vector3(3, 0, 4),

        new Vector3(-3, 0, 39f), new Vector3(0, 0, 39f), new Vector3(3, 0, 39f)
    };

    public const int PLAYER_LEFT = 0, PLAYER_CENTER = 1, PLAYER_RIGHT = 2,
                     ENEMY_LEFT = 3, ENEMY_CENTER = 4, ENEMY_RIGHT = 5,
                     PREVIEW_LEFT = 6, PREVIEW_CENTER = 7, PREVIEW_RIGHT = 8;
        
    public const int CHARACTER_LEFT = 0, CHARACTER_CENTER = 1, CHARACTER_RIGHT = 2;

    public const int PLAYER_TYPE = 0, ENEMY_TYPE = 1, PREVIEW_TYPE = 2,
                     MAX_CHARACTER_COUNT = 3;

    public const int PREVIEW = 1;

    private GameObject Entities, Mannequins, Dungeon;

    public void Init()
    {
        Entities = new GameObject(nameof(Entities));
        Mannequins = new GameObject(nameof(Mannequins));
    }

    /// <summary>
    /// 타겟 커서를 생성하는 메소드입니다.
    /// </summary>
    /// <param name="id">타겟 커서 아이디</param>
    public GameObject TargetByID(PrefabID id)
        => Managers.Resource.Instantiate(Managers.Data.Prefab[(int)id].Prefab);

    /// <summary>
    /// 스테이지를 생성하는 메소드입니다.
    /// </summary>
    /// <param name="id">스테이지 아이디</param>
    public void StageByID(StageID id)
    {
        string dungeonPrefabPath = Managers.Data.Prefab[(int)PrefabID.Dungeon].Prefab;
        string spawnPrefabPath = Managers.Data.Prefab[(int)PrefabID.Spawn].Prefab;

        Dungeon = Managers.Resource.Instantiate(dungeonPrefabPath);
        Managers.Resource.Instantiate(spawnPrefabPath, Dungeon.transform);
        StageManager stage = Managers.Stage;

        stage.previews = ReplaceCharacter(PREVIEW_TYPE, stage.previews, ReturnArray<CharacterID>
        (
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Left,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Center,
            (CharacterID)Managers.Data.Stage[id + PREVIEW].Right
        ));
        stage.enemies = ReplaceCharacter(ENEMY_TYPE, stage.enemies, ReturnArray<CharacterID>
        (
            (CharacterID)Managers.Data.Stage[id].Left,
            (CharacterID)Managers.Data.Stage[id].Center,
            (CharacterID)Managers.Data.Stage[id].Right
        ));

        if (stage.turnCount.Value > PREVIEW)
        {
            return;
        }

        stage.players = ReplaceCharacter(PLAYER_TYPE, stage.players, ReturnArray<CharacterID>
        (
            (CharacterID)1001,
            (CharacterID)1002,
            (CharacterID)1003
        ));

        EnqueueAllCharacter();
    }

    private void EnqueueAllCharacter()
    {
        Queue<Character> turnQueue = Managers.Stage.turnQueue;

        for (int index = 0; index < PREVIEW_LEFT; ++index)
        {
            if (index < ENEMY_LEFT)
            {
                turnQueue.Enqueue(Managers.Stage.players[index]);

                continue;
            }

            turnQueue.Enqueue(Managers.Stage.enemies[index - ENEMY_LEFT]);
        }
    }

    /// <summary>
    /// 스테이지 안의 캐릭터들을 재배치하여 반환하는 메소드입니다.
    /// </summary>
    /// <param name="type">캐릭터 타입</param>
    /// <param name="characters">리스트 배열</param>
    /// <param name="id">캐릭터 아이디</param>
    private List<Character> ReplaceCharacter(int type, List<Character> characters = null, params CharacterID[] id)
    {
        characters.Clear();
        int spawnPosition = PREVIEW_TYPE != type ? ENEMY_TYPE != type ? PLAYER_LEFT : ENEMY_LEFT : PREVIEW_LEFT;

        for (int index = 0; index < id.Length; ++index)
        {
            Character character = CharacterByID(id[index], spawnPosition + index);
            character.Init(id[index]);
            characters.Add(character);
        }

        return characters;
    }

    /// <summary>
    /// 데이터 아이디를 읽어 캐릭터 타입의 게임 오브젝트를 생성하여 반환하는 메소드입니다.
    /// </summary>
    /// <param name="id">데이터 아이디</param>
    /// <param name="position">생성 위치</param>
    /// <param name="parent">부모 트랜스폼</param>
    public Character CharacterByID(CharacterID id, int position, Transform parent = null)
    {
        if (id != 0)
        {
            CharacterData data = Managers.Data.Character[id];
            parent = PREVIEW_LEFT <= position ? ENEMY_LEFT <= position ? PLAYER_LEFT <= position ?
                Mannequins.transform : Entities.transform : Entities.transform : Entities. transform;

            return CharacterByID(data, position, parent);
        }

        return null;
    }

    /// <summary>
    /// 데이터 타입을 읽어 캐릭터 타입의 게임 오브젝트를 생성하여 반환하는 메소드입니다.
    /// </summary>
    /// <param name="data">데이터</param>
    /// <param name="position">생성 위치</param>
    /// <param name="parent">부모 트랜스폼</param>
    public Character CharacterByID(CharacterData data, int position, Transform parent = null)
    {
        GameObject character = Managers.Resource.Instantiate(data.Prefab, parent);
        character.transform.position = footboards[position];

        return character.GetCharacterInGameObject<Character>();
    }
}
