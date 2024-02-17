using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Unit : MonoBehaviour
{
    public string unitName;
    public int damage;
    public int maxHP;
    public int curHP;

    public bool TakeDamage(int dmg)
    {
        curHP -= dmg;

        if(curHP <= 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
