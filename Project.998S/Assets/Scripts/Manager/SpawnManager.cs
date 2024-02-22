using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    //public GameObject TriangleContainer { get; private set; }

    #region Fields
    private static readonly Vector3[] footboards = new Vector3[9]
    {
        new Vector3(-3, 0, -4), new Vector3(0, 0, -4), new Vector3(3, 0, -4),
        new Vector3(-3, 0, 4), new Vector3(0, 0, 4), new Vector3(3, 0, 4),

        new Vector3(-3, 0, 37.5f), new Vector3(0, 0, 37.5f), new Vector3(3, 0, 37.5f)
    };

    public readonly int PLAYER_LEFT = 0, PLAYER_CENTER = 1, PLAYER_RIGHT = 2,
                        ENEMY_LEFT = 3, ENEMY_CENTER = 4, ENEMY_RIGHT = 5,
                        PREVIEW_LEFT = 6, PREVIEW_CENTER = 7, PREVIEW_RIGHT = 8;

    private GameObject Entities, Mannequins;
    #endregion

    public void Init()
    {
        Entities = new GameObject(nameof(Entities));
        Mannequins = new GameObject(nameof(Mannequins));
    }

    #region Spawn Character By ID Methods
    public GameObject CharacterByID(CharacterID id, int position, Transform parent = null)
    {
        if ((CharacterID)0 == id)
        {
            return null;
        }

        CharacterData data = Managers.Data.Character[id];

        switch (position)
        {
            case >= 6:
                parent = Mannequins.transform;
                break;
            case >= 3:
                parent = Entities.transform;
                break;
            case >= 0:
                parent = Entities.transform;
                break;
        }

        return CharacterByID(data, position, parent);
    }

    public GameObject CharacterByID(CharacterData data, int position, Transform parent = null)
    {
        GameObject character = Managers.Resource.Instantiate(data.Prefab, parent);
        character.transform.position = footboards[position];

        return character;
    }
    #endregion
}
