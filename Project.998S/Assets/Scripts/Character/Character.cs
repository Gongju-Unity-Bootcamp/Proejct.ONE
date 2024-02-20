using UniRx;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    [SerializeField] protected int maxHealth;
    [SerializeField] protected int maxAttack;
    [SerializeField] protected int maxDefense;
    [Range(0, 100)] [SerializeField] protected int maxLuck = 0;
    [Range(0, 3)] [SerializeField] protected int maxFocus = 3;

    [SerializeField] protected short level;
    [SerializeField] protected int experience;

    [HideInInspector] public ReactiveProperty<int> currentHealth;
    [HideInInspector] public ReactiveProperty<int> currentAttack;
    [HideInInspector] public ReactiveProperty<int> currentDefense;
    [HideInInspector] public ReactiveProperty<int> currentLuck;
    [HideInInspector] public ReactiveProperty<int> currentFocus;

    [HideInInspector] public CharacterState state;

    protected Animator animator;

    protected virtual void Awake()
    {
        animator = GetComponent<Animator>();
    }

    protected virtual void Init()
    {
        currentHealth.Value = maxHealth;
        currentAttack.Value = maxAttack;
        currentDefense.Value = maxDefense;
        currentLuck.Value = maxLuck;
        currentFocus.Value = maxFocus;
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
