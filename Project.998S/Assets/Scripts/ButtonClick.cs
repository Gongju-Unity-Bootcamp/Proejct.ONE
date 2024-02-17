using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonClick : MonoBehaviour
{
    public Button btn;

    private int hp = 100;

    public void OnClickNewGame()
    {
        TakeDamage(11);
    }

    private void TakeDamage(int damage)
    {
        int currentHP = this.hp;
        currentHP -= damage;
        if(currentHP >= 0)
        {
            hp = currentHP;
            Debug.Log($"{hp}");
        }
        else
        {
            Debug.Log("0");
        }
    }
}
