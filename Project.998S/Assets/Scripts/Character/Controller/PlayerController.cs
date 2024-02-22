using System;
using System.Linq;
using UniRx;
using UnityEngine;

public class PlayerController : Controller
{
    public override void Init()
    {
        base.Init();

        UpdateTurnAsObservable(Managers.Stage.isPlayerTurn);
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

    protected override void UpdateTurnAsObservable(ReactiveProperty<bool> isCharacterTurn)
    {
        base.UpdateTurnAsObservable(isCharacterTurn);
    }

    protected override void SelectCharacterAtFirstTurn()
    {

    }

    protected override Type ReturnCaseEnemyType(GameObject gameObject)
    {
        Enemy enemy = gameObject.GetCharacterInGameObject<Enemy>();
        target.gameObject.SetActive(true);

        Managers.Stage.turnCharacter.Value.characterState.Value = CharacterState.NormalAttack;
        Managers.Game.selectCharacter.Value = enemy.GetCharacterInGameObject<Character>();
        Managers.Stage.turnCharacter.Value.characterState.Value = CharacterState.Idle;
        Managers.Stage.NextTurn();

        return enemy.GetCharacterTypeInGameObject<Enemy>();
    }
}
