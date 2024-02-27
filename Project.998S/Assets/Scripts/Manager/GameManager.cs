using Cinemachine;
using System;
using UniRx;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    [HideInInspector] public ReactiveProperty<int> round { get; set; }
    [HideInInspector] public PlayerController Player { get; private set; }
    [HideInInspector] public EnemyController Enemy { get; private set; }

    private IDisposable updateGameAsObservable;

    public void Init()
    {
        round = new ReactiveProperty<int>();

        var playerControllerGameObject = new GameObject(nameof(PlayerController));
        playerControllerGameObject.transform.parent = transform;
        Player = playerControllerGameObject.AddComponent<PlayerController>();

        var enemyControllerGameObject = new GameObject(nameof(EnemyController));
        enemyControllerGameObject.transform.parent = transform;
        Enemy = enemyControllerGameObject.AddComponent<EnemyController>();
    }

    public void InitController()
    {
        Player.Init();
        Enemy.Init();
    } 

    public void GameStart(StageID id)
    {
        Managers.Spawn.StageByID(id);
        Managers.Stage.turnCount.Value = 0;
        Managers.Stage.UpdateTurn();
        round.Value = (int)id;

        Managers.UI.ClosePopupUI();
        
        Managers.UI.OpenPopup<HUDPopup>();

        InitController();

        Player.isAllEnemyCharacterDead.Subscribe(isAllDead =>
        {
            if (isAllDead)
            {
                GameClear();
            }
        });
        Enemy.isAllEnemyCharacterDead.Subscribe(isAllDead =>
        {
            if (isAllDead)
            {
                GameFail();
            }
        });
    }
    private void CameraMove()
    {
    
    }
    public void GameClear()
    {
        Managers.UI.OpenPopup<SimpleWinPopup>();
    }

    public void GameFail()
    {
        round.Value = 0; // NOTE : 게임 실패 UI
        Managers.UI.OpenPopup<DeathPopup>();
    }

    public void NextRound()
    {
        ++round.Value;
        Managers.Stage.NextDungeon((StageID)round.Value);
    }
}
