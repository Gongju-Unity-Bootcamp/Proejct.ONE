using System.Linq;
using UniRx;

public enum EnemyActionState
{
    LowHealthTargetAttack,
    HigiHealthTargetAttack,
    LowChanceTry,
    HighChanceTry,
    Defense,
}

public class EnemyController : Controller
{
    protected override void UpdateActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate()
            .Where(_ => Managers.Stage.selectCharacter.Value == null)
            .Where(_ => Managers.Stage.isEnemyTurn.Value == true)
            .Select(_ => GetSelectCharacter())
            .Subscribe(character =>
            {
                if (character == null)
                {
                    return;
                }

                CheckCharacterType(character, typeof(Player));
            });
    }

    protected override Character GetSelectCharacter()
        => GetRandomCharacterInList(Managers.Stage.players);

    protected override void StartTurn()
    {
        
    }
}
