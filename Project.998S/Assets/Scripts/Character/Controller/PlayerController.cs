using System;
using System.Linq;
using UniRx;
using UnityEngine;
using static Utils;

public class PlayerController : Controller
{
    #region Fields
    private IDisposable updateMouseObserver;
    #endregion

    public override void Init()
    {
        base.Init();

        UpdatePlayerTurnAsObservable();
        UpdateClickCharacterAsObservable();
    }

    #region Update Player Turn Methods
    private void UpdatePlayerTurnAsObservable()
    {
        Managers.Stage.isPlayerTurn.Subscribe(_ =>
        {

        });
    }
    #endregion

    #region Set Click Character Methods
    private void UpdateClickCharacterAsObservable()
    {
        updateMouseObserver = Observable.EveryFixedUpdate()
            .Where(_ => Input.GetMouseButtonDown(0)).Where(_ => Managers.Stage.isPlayerTurn.Value == true)
            .Select(_ => GetSelectGameObject())
            .Subscribe(gameObject =>
            {
                if (gameObject == null)
                {
                    return;
                }

                CheckCharacterType(gameObject);
                Managers.Stage.NextTurn();
            });
    }

    private GameObject GetSelectGameObject()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (true == Physics.Raycast(ray, out hit))
        {
            return hit.collider.gameObject;
        }

        return null;
    }

    private void CheckCharacterType(GameObject gameObject)
    {
        Type type = gameObject.GetCharacterInGameObject<Character>().GetType();

        if (type == typeof(Enemy))
        {
            Enemy enemy = gameObject.GetCharacterInGameObject<Enemy>();
            Managers.Game.selectCharacter.Value = enemy;
            Managers.Game.Target.gameObject.SetActive(true);
        }
    }
    #endregion
}
