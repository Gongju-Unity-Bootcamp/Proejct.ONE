using System.Linq;
using System;
using UniRx;
using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class PlayerController : Controller
{
    public override void Init()
    {
        base.Init();

        CharacterTurnAsObservable(Managers.Stage.isPlayerTurn);
    }

    protected override void ActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate()
            .Where(_ => Input.GetKeyDown(KeyCode.Mouse0)).Where(_ => Managers.Stage.isPlayerTurn.Value && !isAttack == true)
            .Select(_ => GetSelectCharacter())
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                if (character.characterState.Value == CharacterState.Dead)
                {
                    return;
                }

                if (true == isAttack)
                {
                    return;
                }

                isSelectCharacter.Value = true;
                CheckCharacterType(character, typeof(Enemy));
            });
    }

    protected override void StartTurn(ReactiveProperty<bool> isCharacterTurn)
    {
        Debug.Log("asdsa");
        StageManager stage = Managers.Stage;
        Managers.Stage.AllCharacterLookAtTarget(stage.turnCharacter.Value);
        Character character = stage.enemies[SpawnManager.CHARACTER_CENTER];

        Managers.UI.OpenPopup<PlayerActionPopup>();

        if (false == character.IsCharacterDead())
        {
            CheckCharacterType(character, typeof(Enemy));
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
        if (character == null)
        {
            return;
        }

        if (character.GetType() != targetType)
        {
            return;
        }

        Managers.Stage.selectCharacter.Value = character;
    }
}
