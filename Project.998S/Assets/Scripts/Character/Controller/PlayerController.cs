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
            .Where(_ => Input.GetKeyDown(KeyCode.Mouse0)).Where(_ => Managers.Stage.isPlayerTurn.Value == true)
            .Select(_ => GetSelectCharacter())
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                if (true == character.IsCharacterDead())
                {
                    return;
                }

                CheckCharacterType(character, typeof(Enemy));
            }).AddTo(this);
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

    protected override void SelectCharacterAtFirstTurn()
    {

    }

    protected override void ReturnCheckCharacterType(Character enemy)
    {
        Character turnCharacter = Managers.Stage.turnCharacter.Value;

        target.SetActive(true);
        turnCharacter.ChangeCharacterState(CharacterState.NormalAttack);
        enemy.GetDamage(turnCharacter.currentAttack.Value);
        Debug.Log($"{enemy} Health : {enemy.currentHealth.Value}");
        turnCharacter.ChangeCharacterState(CharacterState.Idle);

        Managers.Stage.NextTurn();
    }
}
