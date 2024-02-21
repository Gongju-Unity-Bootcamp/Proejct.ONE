using UnityEngine;

public abstract class Skill : MonoBehaviour
{
    public SkillEffect effect;
    public int value;
    public SkillTarget target;
    public int range;
    public int slot;

    public virtual void SpendCost()
    {
        
    }
}
