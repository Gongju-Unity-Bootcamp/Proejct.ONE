using System.Linq;
using UniRx;
using UnityEngine;

public enum AgentState
{
    
}

public class EnemyController : Controller
{
    public override void Init()
    {
        base.Init();

        UpdateTurnAsObservable(Managers.Stage.isEnemyTurn);
    }

    protected override void UpdateActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate()
            .Where(_ => Input.GetMouseButtonDown(1)).Where(_ => Managers.Stage.isEnemyTurn.Value == true)
            .Select(_ => GetSelectCharacter())
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                if (true == character.IsCharacterDead())
                {
                    Managers.Stage.NextTurn();

                    return;
                }

                CheckCharacterType(character, typeof(Player));
            }).AddTo(this);
    }

    protected override Character GetSelectCharacter()
        => GetRandomCharacterInList(Managers.Stage.players);

    protected override void SelectCharacterAtFirstTurn()
    {
        
    }

    protected override void ReturnCheckCharacterType(Character player)
    {
        Character turnCharacter = Managers.Stage.turnCharacter.Value;

        target.SetActive(true);

        turnCharacter.ChangeCharacterState(CharacterState.NormalAttack);
        player.GetDamage(turnCharacter.currentAttack.Value);
        Debug.Log($"{player} Health : {player.currentHealth.Value}");
        turnCharacter.ChangeCharacterState(CharacterState.Idle);

        Managers.Stage.NextTurn();
    }
}
