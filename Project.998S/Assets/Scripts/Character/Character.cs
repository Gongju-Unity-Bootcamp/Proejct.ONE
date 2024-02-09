using UnityEngine;
using UniRx;

public abstract class Character : MonoBehaviour
{
    [SerializeField] protected int maxHealth;
    [SerializeField] protected int maxAttack;
    [SerializeField] protected int maxDefense;
    [Range(0, 100)] [SerializeField] protected short maxCritical = 0;
    [Range(0, 5)] [SerializeField] protected short maxSkillCost = 5;

    [HideInInspector] public ReactiveProperty<int> currentHealth;
    [HideInInspector] public ReactiveProperty<int> currentAttack;
    [HideInInspector] public ReactiveProperty<int> currentDefense;
    [HideInInspector] public short currentCritical;
    [HideInInspector] public short currentSkillCost;

    protected virtual void Init()
    {
        currentHealth.Value = maxHealth;
        currentAttack.Value = maxAttack;
        currentDefense.Value = maxDefense;
        currentCritical = maxCritical;
        currentSkillCost = maxSkillCost;
    }

    public virtual void Attack(Character target, int damage)
    {
        target.GetDamage(damage);
    }

    public virtual void GetDamage(int damage)
    {
        if (currentHealth.Value > 0)
        {
            currentHealth.Value -= damage;

            return;
        }

        Die();
    }

    public abstract void Die();
}
