using System;
using UniRx;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    #region Fields
    protected int maxHealth;
    protected int maxAttack;
    protected int maxDefense;
    protected int maxLuck;
    protected int maxFocus;

    protected ReactiveProperty<int> level;
    protected ReactiveProperty<int> exp;

    [HideInInspector] public ReactiveProperty<int> currentHealth;
    [HideInInspector] public ReactiveProperty<int> currentAttack;
    [HideInInspector] public ReactiveProperty<int> currentDefense;
    [HideInInspector] public ReactiveProperty<int> currentLuck;
    [HideInInspector] public ReactiveProperty<int> currentFocus;

    [HideInInspector] public CharacterID characterId;
    [HideInInspector] public string characterName;

    [HideInInspector] public ReactiveProperty<CharacterState> characterState;

    protected Animator animator;
    protected Transform lookTransform;

    private IDisposable updateStateChangeAsObservable;
    #endregion

    protected virtual void Awake()
    {
        animator = gameObject.GetComponentAssert<Animator>();
    }

    public virtual void Init(CharacterID id)
    {
        currentHealth = new ReactiveProperty<int>();
        currentAttack = new ReactiveProperty<int>();
        currentDefense = new ReactiveProperty<int>();
        currentLuck = new ReactiveProperty<int>();
        currentFocus = new ReactiveProperty<int>();

        characterId = id;
        characterName = Managers.Data.Character[id].Name;
        characterState.Value = CharacterState.Idle;

        InitStat(Managers.Data.Character[id]);

        UpdateStateChangeAsObservable();
    }

    public virtual void InitStat(CharacterData data)
    {
        maxHealth = data.Health;
        maxAttack = data.Attack;
        maxDefense = data.Defense;
        maxLuck = data.Luck;
        maxFocus = data.Focus;

        currentHealth.Value = maxHealth;
        currentAttack.Value = maxAttack;
        currentDefense.Value = maxDefense;
        currentLuck.Value = maxLuck;
        currentFocus.Value = maxFocus;
    }

    protected void UpdateStateChangeAsObservable()
    {

    }

    public virtual void GetDamage(int damage)
    {
        if (currentHealth.Value > 0)
        {
            currentHealth.Value -= Define.Calculate.Damage(currentAttack.Value, currentDefense.Value, currentLuck.Value);

            return;
        }

        Die();
    }

    public abstract void Die();
}
