using System.Collections.Generic;
using System.Linq;
using UniRx;
using UnityEngine;

public class StageManager : MonoBehaviour
{
    [HideInInspector] public List<Character> previews { get; set; }
    [HideInInspector] public List<Character> enemies { get; set; }
    [HideInInspector] public List<Character> players { get; set; }

    [HideInInspector] public Queue<Character> turnQueue { get; private set; }

    [HideInInspector] public ReactiveProperty<int> turnCount { get; set; }
    [HideInInspector] public ReactiveProperty<Character> turnCharacter { get; private set; }
    [HideInInspector] public ReactiveProperty<Character> selectCharacter { get; set; }

    [HideInInspector] public ReactiveProperty<bool> isEnemyTurn { get; private set; }
    [HideInInspector] public ReactiveProperty<bool> isPlayerTurn { get; private set; }

    [HideInInspector] public GameObject target { get; set; }

    public void Init()
    {
        previews = new List<Character>();
        enemies = new List<Character>();
        players = new List<Character>();

        turnQueue = new Queue<Character>();

        turnCount = new ReactiveProperty<int>();
        turnCharacter = new ReactiveProperty<Character>();
        selectCharacter = new ReactiveProperty<Character>();

        isEnemyTurn = new ReactiveProperty<bool>();
        isPlayerTurn = new ReactiveProperty<bool>();

        target = Managers.Spawn.TargetByID(PrefabID.Highlight);
    }

    public void UpdateTurn()
    {
        UpdateTurnAsObservable();
        UpdateSelectCharacterAsObservable();
    }

    private void UpdateTurnAsObservable()
    {
        turnCount.Subscribe(value =>
        {
            Character character = turnQueue.Dequeue();

            if (true == character.IsCharacterDead())
            {
                NextCharacterTurn();
                return;
            }
            Debug.Log($"{turnCount}");
            turnCharacter.Value = character;
            ChangeCharacterTurn(turnCharacter.Value);
            turnQueue.Enqueue(character);
        });
    }

    private void UpdateSelectCharacterAsObservable()
    {
        selectCharacter.Where(_ => selectCharacter != null)
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                SelectTarget(character);
                character.ChangeCharacterState(CharacterState.Idle);
                turnCharacter.Value.LookAtTarget(character.transform);
            });
    }

    private void ChangeCharacterTurn(Character character)
    {
        bool isTypePlayer = character.GetType() == typeof(Player) ? true : false;

        isPlayerTurn.Value = isTypePlayer;
        isEnemyTurn.Value = !isTypePlayer;
        selectCharacter.Value = null;
    }

    public void NextCharacterTurn()
        => ++turnCount.Value;

    public void NextDungeon(StageID id)
    {
        Managers.Spawn.StageByID(id);
    }

    public void AllCharacterLookAtTarget(Character character)
    {
        bool isTypePlayer = character.GetType() == typeof(Player) ? true : false;
        List<Character> characters = isTypePlayer ? enemies : players;

        foreach (Character otherCharacter in characters)
        {
            if (false == otherCharacter.IsCharacterDead())
            {
                otherCharacter.LookAtTarget(character.transform);
            }
        }
    }

    public void SelectTarget(Character character)
    {
        target.transform.position = character.transform.position;
    }
}
