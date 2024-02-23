using System;
using System.Collections.Generic;
using UniRx;
using Random = UnityEngine.Random;
using UnityEngine;

public abstract class Controller : MonoBehaviour
{
    protected GameObject target;
    protected int[] targetFindSequence;
    protected bool[] isCharacterDead;

    protected IDisposable updateActionObserver;

    public void Start()
        => Init();

    public virtual void Init()
    {
        target = Managers.Game.target;
        targetFindSequence = new int[StageManager.MAX_CHARACTER_COUNT]
        { 
            SpawnManager.CHARACTER_CENTER, 
            SpawnManager.CHARACTER_LEFT, 
            SpawnManager.CHARACTER_RIGHT 
        };
        isCharacterDead = new bool[StageManager.MAX_CHARACTER_COUNT];

        UpdateActionAsObservable();
    }

    protected abstract void UpdateActionAsObservable();

    protected abstract Character GetSelectCharacter();

    protected virtual void UpdateTurnAsObservable(ReactiveProperty<bool> isCharacterTurn)
    {
        isCharacterTurn
            .Where(_ => Managers.Game.selectCharacter == null)
            .Subscribe(_ =>
            {
                SelectCharacterAtFirstTurn();
            }).AddTo(this);
    }

    protected virtual void SelectCharacterAtFirstTurn()
    {
        
    }

    protected virtual void CheckCharacterType(Character character, Type targetType)
    {
        if (character.GetType() != targetType)
        {
            return;
        }

        Managers.Game.selectCharacter.Value = character;
        ReturnCheckCharacterType(character);
    }

    protected virtual void ReturnCheckCharacterType(Character character)
    {

    }

    private int count;

    public Character GetRandomCharacterInList(List<Character> characters)
    {
        if (count > characters.Count)
        {
            count = 0;
            return null;
        }

        int random = Random.Range(0, characters.Count);

        if (characters[random].characterState.Value != CharacterState.Death)
        {
            return characters[random].GetCharacterInGameObject<Character>();
        }

        return GetRandomCharacterInList(characters);
    }
}
