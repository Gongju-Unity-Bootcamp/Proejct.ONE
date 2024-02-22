using System;
using UniRx;
using UnityEngine;

public abstract class Controller : MonoBehaviour
{
    protected Target target;
    protected int[] targetFindSequence;

    protected IDisposable updateActionObserver;

    public void Start()
        => Init();

    public virtual void Init()
    {
        target = Managers.Game.target;
        targetFindSequence = new int[StageManager.MAX_CHARACTER_COUNT]
        { 
            SpawnManager.PLAYER_CENTER, 
            SpawnManager.PLAYER_LEFT, 
            SpawnManager.PLAYER_RIGHT 
        };
        UpdateActionAsObservable();
    }

    protected abstract void UpdateActionAsObservable();

    protected abstract GameObject GetSelectGameObject();

    protected virtual void UpdateTurnAsObservable(ReactiveProperty<bool> isCharacterTurn)
    {
        isCharacterTurn
            .Where(_ => Managers.Game.selectCharacter == null)
            .Subscribe(_ =>
            {
                SelectCharacterAtFirstTurn();
            });
    }

    protected virtual void SelectCharacterAtFirstTurn()
    {

    }

    protected Type CheckCharacterType(GameObject gameObject)
    {
        Type type = gameObject.GetCharacterTypeInGameObject<Character>();

        if (type == typeof(Player))
        {
            return ReturnCasePlayerType(gameObject);
        }

        if (type == typeof(Enemy))
        {
            return ReturnCaseEnemyType(gameObject);
        }

        return type;
    }

    protected virtual Type ReturnCasePlayerType(GameObject gameObject)
        => gameObject.GetType();

    protected virtual Type ReturnCaseEnemyType(GameObject gameObject)
        => gameObject.GetType();
}
