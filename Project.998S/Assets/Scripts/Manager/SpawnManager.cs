using UnityEngine;
using UnityEngine.TextCore.Text;

public class SpawnManager : MonoBehaviour
{
    private readonly Vector3[] footboards = new Vector3[9]
    {
        new Vector3(-3, 0, -4), new Vector3(0, 0, -4), new Vector3(3, 0, -4),
        new Vector3(-3, 0, 4), new Vector3(0, 0, 4), new Vector3(3, 0, 4),

        new Vector3(-3, 0, 37.5f), new Vector3(0, 0, 37.5f), new Vector3(3, 0, 37.5f)
    };

    public readonly int PLAYER_LEFT = 0, PLAYER_CENTER = 1, PLAYER_RIGHT = 2,
                     ENEMY_LEFT = 3, ENEMY_CENTER = 4, ENEMY_RIGHT = 5,
                     PREVIEW_LEFT = 6, PREVIEW_CENTER = 7, PREVIEW_RIGHT = 8;

    public GameObject spawn;

    public void Init()
    {
        GameData data = GameManager.Data.Game[(int)GameAsset.Spawn];

        spawn = GameManager.Resource.Instantiate(data.Prefab, transform);
        spawn.SetActive(false);
    }

    public GameObject ByCharacterID(CharacterID id, int position)
    {
        if (id == (CharacterID)0)
        {
            return null;
        }

        CharacterData data = GameManager.Data.Character[id];

        switch (position)
        {
            case 0:
                position = PLAYER_LEFT;
                break;
            case 1:
                position = PLAYER_CENTER;
                break;
            case 2:
                position = PLAYER_RIGHT;
                break;

            case 3:
                position = ENEMY_LEFT;
                break;
            case 4:
                position = ENEMY_CENTER;
                break;
            case 5:
                position = ENEMY_RIGHT;
                break;

            case 6:
                position = PREVIEW_LEFT;
                break;
            case 7:
                position = PREVIEW_CENTER;
                break;
            case 8:
                position = PREVIEW_RIGHT;
                break;
        }

        return ByCharacterID(data, position);
    }

    public GameObject ByCharacterID(CharacterData data, int position) 
    {
        GameObject character = GameManager.Resource.Instantiate(data.Prefab, transform);
        character.transform.position = footboards[position];

        return character;
    }
}
