//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using UnityEngine.UI;

//public class GameManager : MonoBehaviour
//{
//    public Unit _playerUnit;
//    public Unit _enemyUnit;

//    private Button btn;
//    private ButtonClick btnClick;

//    private UnitState currentState = UnitState.PlayerTurn;

//    private void Start()
//    {
//        Debug.Log("Game Start. PlayerTurn");
//    }

//    private void Update()
//    {
//        switch (currentState)
//        {
//            case UnitState.PlayerTurn:
//                if (btnClick.OnClickNewGame())
//                {
//                    _playerUnit.Attack(_enemyUnit);
//                    currentState = UnitState.EnemyTurn;
//                    Debug.Log("Enemy Turn");
//                }
//                break;
//            case UnitState.EnemyTurn:
//                _enemyUnit.Attack(_playerUnit);
//                currentState = UnitState.PlayerTurn;
//                Debug.Log("Player Turn");
//                break;
//        }
//    }
//}
