using UnityEngine;

public abstract class Skill : MonoBehaviour
{
    public int skillDamage;
    public int skillCost;
    public TargetCount targetCount;
    public TargetType targetType;

    public virtual void SpendCost()
    {
        
    }
}
