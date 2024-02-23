using UnityEngine;

public class SpawnManager
{
    public readonly Vector3[] footboards = new Vector3[9]
    {
        new Vector3(-3, 0, -4), new Vector3(0, 0, -4), new Vector3(3, 0, -4),
        new Vector3(-3, 0, 4), new Vector3(0, 0, 4), new Vector3(3, 0, 4),

        new Vector3(-3, 0, 37.5f), new Vector3(0, 0, 37.5f), new Vector3(3, 0, 37.5f)
    };

    public const int PLAYER_LEFT = 0, PLAYER_CENTER = 1, PLAYER_RIGHT = 2,
                     ENEMY_LEFT = 3, ENEMY_CENTER = 4, ENEMY_RIGHT = 5,
                     PREVIEW_LEFT = 6, PREVIEW_CENTER = 7, PREVIEW_RIGHT = 8,
        
                     CHARACTER_LEFT = 0, CHARACTER_CENTER = 1, CHARACTER_RIGHT = 2;

    private GameObject Entities, Mannequins;

    public void Init()
    {
        Entities = new GameObject(nameof(Entities));
        Mannequins = new GameObject(nameof(Mannequins));
    }

    public Character CharacterByID(CharacterID id, int position, Transform parent = null)
    {
        if (id == (CharacterID)0)
        {
            return null;
        }

        CharacterData data = Managers.Data.Character[id];

        switch (position)
        {
            case >= PREVIEW_LEFT:
                parent = Mannequins.transform;
                break;
            case >= ENEMY_LEFT:
                parent = Entities.transform;
                break;
            case >= PLAYER_LEFT:
                parent = Entities.transform;
                break;
        }

        return CharacterByID(data, position, parent);
    }

    public Character CharacterByID(CharacterData data, int position, Transform parent = null)
    {
        GameObject character = Managers.Resource.Instantiate(data.Prefab, parent);
        character.transform.position = footboards[position];

        return character.GetCharacterInGameObject<Character>();
    }
}
