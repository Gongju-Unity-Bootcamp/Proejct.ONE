using UniRx;
using UniRx.Triggers;
using UnityEngine;

public class EnemyController : Controller
{
    public override void Init()
    {
        base.Init();

        UpdateEnemyTurnAsObservable();

        this.UpdateAsObservable()
            .Where(_ => Input.GetMouseButtonDown(1)).Where(_ => Managers.Stage.isEnemyTurn.Value == true)
            .Subscribe(_ =>
            {
                Managers.Stage.NextTurn();
            });
    }

    #region Update Enemy Turn Methods
    private void UpdateEnemyTurnAsObservable()
    {
        Managers.Stage.isEnemyTurn.Subscribe(_ =>
        {

        });
    }
    #endregion
}
