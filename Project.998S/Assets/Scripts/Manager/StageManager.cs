using System.Collections.Generic;
using UnityEngine;

public class StageManager : MonoBehaviour
{
    public int round;
    public Queue<Dictionary<CharacterID, GameObject>> characterTurn;
    public List<GameObject> players, enemies, previews;
    public const int CHARACTER_COUNT = 3, PREVIEW = 1;
    public GameObject stage;

    public void Init()
    {
        GameData data = GameManager.Data.Game[(int)GameAsset.Stage];

        stage = GameManager.Resource.Instantiate(data.Prefab, transform);

        characterTurn = new Queue<Dictionary<CharacterID, GameObject>>();

        players = new List<GameObject>();
        enemies = new List<GameObject>();
        previews = new List<GameObject>();

        Build((StageID)1);
    }

    public void Build(StageID id)
    {
        round = (int)id;
        
        players = CharacterArrange(players, 0, new CharacterID[3] { 
            (CharacterID)1001, 
            (CharacterID)0, 
            (CharacterID)1002 
        });
        enemies = CharacterArrange(enemies, 1, new CharacterID[3] {
            (CharacterID)GameManager.Data.Stage[id].Left,
            (CharacterID)GameManager.Data.Stage[id].Center,
            (CharacterID)GameManager.Data.Stage[id].Right
        });
        previews = CharacterArrange(previews, 2, new CharacterID[3] {
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Left,
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Center,
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Right
        });
    }

    private List<GameObject> CharacterArrange(List<GameObject> characters, int type, params CharacterID[] id)
    {
        characters.Clear();
        int position = int.MaxValue;

        switch (type)
        {
            case 0:
                position = GameManager.Spawn.PLAYER_LEFT;
                break;
            case 1:
                position = GameManager.Spawn.ENEMY_LEFT;
                break;
            case 2:
                position = GameManager.Spawn.PREVIEW_LEFT;
                break;
        }

        for (int index = 0; index < id.Length; ++index)
        {
            GameObject character = GameManager.Spawn.ByCharacterID(id[index], position + index);
            characters.Add(character);

            if (character != null)
            {
                characterTurn.Enqueue(new Dictionary<CharacterID, GameObject>() { { id[index], character } });
            }
        }

        return characters;
    }
}
