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
    }
    
    public void InitController()
    {
        GameObject gameObject;

        gameObject = new GameObject(nameof(PlayerController));
        gameObject.transform.parent = transform;
        Player = gameObject.AddComponent<PlayerController>();

        gameObject = new GameObject(nameof(EnemyController));
        gameObject.transform.parent = transform;
        Enemy = gameObject.AddComponent<EnemyController>();

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

        Player.isAllCharacterDead.Subscribe(isAllDead =>
        {
            if (isAllDead)
            {
                GameFail();
            }
        });
        Enemy.isAllCharacterDead.Subscribe(isAllDead =>
        {
            if (isAllDead)
            {
                NextRound();
            }
        });
    }
    private void CameraMove()
    {
    
    }
    public void GameClear()
    {
        // NOTE : 게임 성공 UI
    }

    public void GameFail()
    {
        round.Value = 0; // NOTE : 게임 실패 UI
    }

    public void NextRound()
    {
        ++round.Value;
        Managers.Stage.NextDungeon((StageID)round.Value);
    }
}
