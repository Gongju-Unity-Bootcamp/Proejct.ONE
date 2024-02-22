using System;
using System.Linq;
using UniRx;
using Random = UnityEngine.Random;
using UnityEngine;

public enum AgentState
{
    
}

public class EnemyController : Controller
{
    private int randomIndex;
    public override void Init()
    {
        base.Init();

        UpdateEnemyTurnAsObservable();
    }

    private void UpdateEnemyTurnAsObservable()
    {
        Managers.Stage.isEnemyTurn.Subscribe(_ =>
        {
            SelectPlayerAtFirstTurn();
        });
    }

    private void SelectPlayerAtFirstTurn()
    {
        randomIndex = GetRandomIndex();
        GetSelectGameObject();
    }

    protected override void UpdateActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate()
            .Where(_ => Input.GetMouseButtonDown(1)).Where(_ => Managers.Stage.isEnemyTurn.Value == true)
            .Select(_ => GetSelectGameObject())
            .Subscribe(gameObject =>
            {
                if (gameObject == null)
                {
                    return;

                }

                CheckCharacterType(gameObject);
            });
    }

    protected override GameObject GetSelectGameObject()
    {
        randomIndex = GetRandomIndex();

        return Managers.Stage.players[randomIndex].gameObject;
    }

    protected override Type ReturnCasePlayerType(GameObject gameObject)
    {
        Player player = gameObject.GetCharacterInGameObject<Player>();
        target.gameObject.SetActive(true);

        Managers.Game.selectCharacter.Value = player.GetCharacterInGameObject<Character>();
        Managers.Stage.NextTurn();

        return player.GetCharacterTypeInGameObject<Player>();
    }

    private int GetRandomIndex()
        => Random.Range(0, Managers.Stage.players.Count);
}
