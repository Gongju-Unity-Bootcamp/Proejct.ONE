using System;
using System.Linq;
using UniRx;
using UnityEngine;

public class PlayerController : Controller
{
    public override void Init()
    {
        base.Init();

        UpdatePlayerTurnAsObservable();
    }

    private void UpdatePlayerTurnAsObservable()
    {
        Managers.Stage.isPlayerTurn.Subscribe(_ =>
        {
            
        });
    }

    protected override void UpdateActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate()
            .Where(_ => Input.GetMouseButtonDown(0)).Where(_ => Managers.Stage.isPlayerTurn.Value == true)
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
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (true == Physics.Raycast(ray, out hit))
        {
            return hit.collider.gameObject;
        }

        return null;
    }

    protected override Type ReturnCaseEnemyType(GameObject gameObject)
    {
        Enemy enemy = gameObject.GetCharacterInGameObject<Enemy>();
        target.gameObject.SetActive(true);

        Managers.Game.selectCharacter.Value = enemy.GetCharacterInGameObject<Character>();
        Managers.Stage.NextTurn();

        return enemy.GetCharacterTypeInGameObject<Enemy>();
    }
}
