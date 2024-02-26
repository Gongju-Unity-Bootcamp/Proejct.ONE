using System.Linq;
using System;
using UniRx;
using UnityEngine;

public enum PlayerActionState
{
    Attack,
    Defense
}

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
            .Where(_ => Input.GetKeyDown(KeyCode.Mouse0)).Where(_ => Managers.Stage.isPlayerTurn.Value == true)
            .Select(_ => GetSelectCharacter())
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                if (true == Managers.Stage.turnCharacter.Value.IsCharacterAttack())
                {
                    return;
                }

                isSelectCharacter.Value = true;
                CheckCharacterType(character, typeof(Enemy));
            });
    }

    protected override void StartTurn(ReactiveProperty<bool> isCharacterTurn)
    {
        StageManager stage = Managers.Stage;
        Character character = stage.enemies[SpawnManager.CHARACTER_CENTER];
        Managers.UI.OpenPopup<PlayerActionPopup>();

        if (false == character.IsCharacterDead())
        {
            CheckCharacterType(character, typeof(Enemy));

            return;
        }

        CheckCharacterType(GetCharacterByRandomInList(stage.enemies), typeof(Enemy));
    }

    private Character GetSelectCharacter()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (true == Physics.Raycast(ray, out hit))
        {
            GameObject gameObject = hit.collider.gameObject;

            return gameObject.GetCharacterInGameObject<Character>();
        }

        return null;
    }

    private void CheckCharacterType(Character character, Type targetType)
    {
        if (character.GetType() != targetType)
        {
            return;
        }

        Managers.Stage.selectCharacter.Value = character;
    }
}
