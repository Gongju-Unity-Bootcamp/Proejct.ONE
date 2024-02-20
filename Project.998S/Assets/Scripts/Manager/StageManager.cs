using System.Collections.Generic;
using UniRx;
using UnityEngine;

public class StageManager : MonoBehaviour
{
    private const int PREVIEW = 1;

    public Queue<Dictionary<CharacterID, GameObject>> turnQueue;

    [HideInInspector] public CharacterID turnCharacterID;
    [HideInInspector] public GameObject turnGameObject;
    [HideInInspector] public List<GameObject> players, enemies, previews;

    [HideInInspector] public ReactiveProperty<int> round { get; private set; }
    [HideInInspector] public ReactiveProperty<bool> isPlayerTurn { get; private set; }

    private GameObject stage;

    public void Init()
    {
        round = new ReactiveProperty<int>();
        isPlayerTurn = new ReactiveProperty<bool>();

        turnQueue = new Queue<Dictionary<CharacterID, GameObject>>();

        players = new List<GameObject>();
        enemies = new List<GameObject>();
        previews = new List<GameObject>();

        GameData data = GameManager.Data.Game[(int)GameAsset.Stage];

        stage = GameManager.Resource.Instantiate(data.Prefab);
        stage.SetActive(false);

        CreateCharacter((StageID)1);

        isPlayerTurn.Subscribe(value =>
        {
            Dictionary<CharacterID, GameObject> dump = new Dictionary<CharacterID, GameObject>();
            dump = turnQueue.Dequeue();

            foreach (KeyValuePair<CharacterID, GameObject> dictionary in dump)
            {
                turnCharacterID = dictionary.Key;
                turnGameObject = dictionary.Value;
                break;
            }

            turnQueue.Enqueue(dump);
        });
    }

    public void CreateCharacter(StageID id)
    {
        stage.SetActive(true);
        round.Value = (int)id;
        isPlayerTurn.Value = true;
        
        players = ArrangeCharacter(players, 0, new CharacterID[3] { 
            (CharacterID)1001, 
            (CharacterID)0, 
            (CharacterID)1002 
        });
        enemies = ArrangeCharacter(enemies, 1, new CharacterID[3] {
            (CharacterID)GameManager.Data.Stage[id].Left,
            (CharacterID)GameManager.Data.Stage[id].Center,
            (CharacterID)GameManager.Data.Stage[id].Right
        });
        previews = ArrangeCharacter(previews, 2, new CharacterID[3] {
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Left,
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Center,
            (CharacterID)GameManager.Data.Stage[id + PREVIEW].Right
        });
    }

    private List<GameObject> ArrangeCharacter(List<GameObject> characters, int type, params CharacterID[] id)
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

            if (false == (character == null))
            {
                turnQueue.Enqueue(AddQueue(id[index], character));
            }
        }

        return characters;
    }

    private Dictionary<CharacterID, GameObject> AddQueue(CharacterID id, GameObject character)
    {
        Dictionary<CharacterID, GameObject> queue = new Dictionary<CharacterID, GameObject>();

        queue[id] = character;

        return queue;
    }
}
