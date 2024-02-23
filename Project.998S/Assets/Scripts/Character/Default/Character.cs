using System;
using UniRx;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
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

    [HideInInspector] public ReactiveProperty<int> currentLevel;
    [HideInInspector] public ReactiveProperty<int> currentExp;

    [HideInInspector] public CharacterID characterId;
    [HideInInspector] public string characterName;

    [HideInInspector] public ReactiveProperty<CharacterState> characterState;

    protected Animator animator;
    protected Transform lookTransform;
    protected Target target;

    private IDisposable updateStateChangeAsObservable;

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
        
        currentLevel = new ReactiveProperty<int>();
        currentExp = new ReactiveProperty<int>();

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

        level.Value = (int)data.Level;
        LevelData levelData = Managers.Data.Level[(int)data.Level - 1];

        exp.Value = levelData.Exp;

        currentHealth.Value = Define.Calculate.Health(maxHealth, level.Value);
        currentAttack.Value = Define.Calculate.Attack(maxAttack, level.Value);
        currentDefense.Value = Define.Calculate.Defense(maxDefense);
        currentLuck.Value = Define.Calculate.Luck(maxLuck);
        currentFocus.Value = maxFocus;
    }

    protected void UpdateStateChangeAsObservable()
    {
        characterState.Where(_ => characterState != null)
            .Subscribe(state =>
            {
                switch (state)
                {
                    case CharacterState.Idle:
                        break;
                    case CharacterState.Dodge:
                        break;
                    case CharacterState.Damage:
                        break;
                    case CharacterState.Death:
                        break;
                    case CharacterState.NormalAttack:
                        animator.SetTrigger(AnimatorParameter.NormalAttack);
                        break;
                    case CharacterState.ShortSkill:
                        break;
                    case CharacterState.LongSkill:
                        break;
                }
            });
    }

    public void LookAtTarget(Transform target)
        => transform.LookAt(target);

    public virtual void GetDamage(int damage)
    {
        characterState.Value = CharacterState.Damage;

        if (currentHealth.Value > 0)
        {
            currentHealth.Value -= Define.Calculate.Damage(currentAttack.Value, currentDefense.Value, currentLuck.Value);

            return;
        }

        Die();
    }

    public abstract void Die();
}
