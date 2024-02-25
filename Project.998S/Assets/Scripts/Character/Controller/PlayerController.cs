using System.Collections;
using System.Linq;
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

                CheckCharacterType(character, typeof(Enemy));
            });
    }

    protected override Character GetSelectCharacter()
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

    protected override void StartTurn()
    {
        StageManager stage = Managers.Stage;
        Character character = stage.enemies[SpawnManager.CHARACTER_CENTER];
        Managers.Stage.AllCharacterLookAtTarget(stage.turnCharacter.Value);

        if (false == character.IsCharacterDead())
        {
            CheckCharacterType(stage.enemies[SpawnManager.CHARACTER_CENTER], typeof(Enemy));
        }
        else
        {
            CheckCharacterType(GetRandomCharacterInList(stage.enemies), typeof(Enemy));
        }

        Managers.UI.OpenPopup<PlayerActionPopup>();
    }

    protected override IEnumerator DelayForEndTurn(float delay, Character character)
    {
        Managers.UI.ClosePopupUI();

        return base.DelayForEndTurn(delay, character);
    }
}
