using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum UnitState
{
    PlayerTurn,
    EnemyTurn,
    Win,
    Lose
}

public class TurnSystem : MonoBehaviour
{
    public GameObject _playerPrefab;
    public GameObject _enemyPrefab;

    public Transform _playerBattleStation;
    public Transform _enemyBattleStation;

    Unit PlayerUnit;
    Unit EnemyUnit;

    public Text textName;
    public BattleHUD _playerHUD;
    public BattleHUD _enemyHUD;

    public Button btn;

    public UnitState state;

    private bool mouseClick;

    private void Start()
    {
        state = UnitState.PlayerTurn;
        StartCoroutine(SetUpBattle());
    }

    IEnumerator SetUpBattle()
    {
        GameObject playerGo = Instantiate(_playerPrefab, _playerBattleStation);
        PlayerUnit = playerGo.GetComponent<Unit>();

        GameObject enemyGo = Instantiate(_enemyPrefab, _enemyBattleStation);
        EnemyUnit = enemyGo.GetComponent<Unit>();

        textName.text = EnemyUnit.unitName;

        _playerHUD.SetHUD(PlayerUnit);
        _enemyHUD.SetHUD(EnemyUnit);

        yield return new WaitForSeconds(2f);

        state = UnitState.PlayerTurn;
        int a = gameObject.transform.childCount;
        PlayerTurn();
    }

    IEnumerator PlayerAttack()
    {
        bool isDead = EnemyUnit.TakeDamage(PlayerUnit.damage);
        
        yield return new WaitForSeconds(2f);
        _enemyHUD.SetHP(EnemyUnit.curHP);
        
        if (isDead)
        {
            state = UnitState.Win;
            EndBattle();
        }
        else
        {
            state = UnitState.EnemyTurn;
            StartCoroutine(EnemyTurn());
        }
    }

    IEnumerator EnemyTurn()
    {
        textName.text = "Enemy Attack";

        yield return new WaitForSeconds(2f);

        bool isDead = PlayerUnit.TakeDamage(EnemyUnit.damage);

        _playerHUD.SetHP(PlayerUnit.curHP);

        yield return new WaitForSeconds(2f);
        if (isDead)
        {
            state = UnitState.Lose;
            EndBattle();
        }
        else
        {
            state = UnitState.PlayerTurn;
            PlayerTurn();

        }

    }

    void EndBattle()
    {
        if(state == UnitState.Win)
        {
            textName.text = "You Win!";
        }
        else if(state == UnitState.Lose)
        {
            textName.text = "You Lose!";

        }
    }

    void PlayerTurn()
    {
        btn.interactable = true;
        textName.text = "Player Turn : ";
    }
    public void OnAttackButton()
    {
        mouseClick = true;
        if(state != UnitState.PlayerTurn) { return; }
        StartCoroutine(PlayerAttack());
        btn.interactable = false;
    }
}