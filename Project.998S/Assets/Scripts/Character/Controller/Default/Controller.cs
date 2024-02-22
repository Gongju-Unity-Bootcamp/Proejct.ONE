using System;
using UniRx;
using UnityEngine;

public abstract class Controller : MonoBehaviour
{
    protected Target target;

    protected IDisposable updateActionObserver;

    public void Start()
        => Init();

    public virtual void Init()
    {
        target = Managers.Game.target;

        UpdateActionAsObservable();
    }

    protected abstract void UpdateActionAsObservable();

    protected abstract GameObject GetSelectGameObject();

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
