using System;
using UniRx;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    [HideInInspector] public ReactiveProperty<int> maxHealth { get; private set; }
    [HideInInspector] public ReactiveProperty<int> maxAttack { get; private set; }
    [HideInInspector] public ReactiveProperty<int> maxDefense { get; private set; }
    [HideInInspector] public ReactiveProperty<int> maxLuck { get; private set; }
    [HideInInspector] public ReactiveProperty<int> maxFocus { get; private set; }

    [HideInInspector] public ReactiveProperty<int> level { get; set; }
    [HideInInspector] public ReactiveProperty<int> exp { get; set; }

    [HideInInspector] public ReactiveProperty<int> currentHealth { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentAttack { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentDefense { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentLuck { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentFocus { get; private set; }

    [HideInInspector] public CharacterID characterId;
    [HideInInspector] public string characterName;

    [HideInInspector] public ReactiveProperty<CharacterState> characterState { get; set; }

    protected int uniqueHealth { get; private set; }
    protected int uniqueAttack { get; private set; }
    protected int uniqueDefense { get; private set; }
    protected int uniqueLuck { get; private set; }
    protected int uniqueFocus { get; private set; }

    protected int maxLevel { get; private set; }
    protected int requireExp { get; private set; }

    protected Animator animator;
    protected Transform lookTransform;

    protected IDisposable updateLookAtTargetAsObservable;

    protected virtual void Awake()
    {
        animator = gameObject.GetComponentAssert<Animator>();
    }

    public virtual void Init(CharacterID id)
    {
        maxHealth = new ReactiveProperty<int>();
        maxAttack = new ReactiveProperty<int>();
        maxDefense = new ReactiveProperty<int>();
        maxLuck = new ReactiveProperty<int>();
        maxFocus = new ReactiveProperty<int>();
        
        level = new ReactiveProperty<int>();
        exp = new ReactiveProperty<int>();

        currentHealth = new ReactiveProperty<int>();
        currentAttack = new ReactiveProperty<int>();
        currentDefense = new ReactiveProperty<int>();
        currentLuck = new ReactiveProperty<int>();
        currentFocus = new ReactiveProperty<int>();

        InitInfo(id);
        InitStat(Managers.Data.Character[id]);

        UpdateLookAtTargetAsObservable();
        UpdateStateChangeAsObservable();
    }

    public virtual void InitInfo(CharacterID id)
    {
        characterId = id;
        characterName = Managers.Data.Character[id].Name;
        characterState = new ReactiveProperty<CharacterState>();
        characterState.Value = CharacterState.Idle;
    }

    public virtual void InitStat(CharacterData data)
    {
        LevelData levelData = Managers.Data.Level[data.IdLevel];

        uniqueHealth = data.Health;
        uniqueAttack = data.Attack;
        uniqueDefense = data.Defense;
        uniqueLuck = data.Luck;
        uniqueFocus = data.Focus;

        level.Value = (int)data.IdLevel;
        exp.Value = 0;

        maxLevel = Managers.Data.Level.Count;
        requireExp = levelData.Exp;

        maxHealth.Value = Define.Calculate.Health(uniqueHealth, levelData.HealthPerLevel);
        maxAttack.Value = Define.Calculate.Attack(uniqueAttack, levelData.AttackPerLevel);
        maxDefense.Value = Define.Calculate.Defense(uniqueDefense, levelData.AttackPerLevel);
        maxLuck.Value = Define.Calculate.Luck(uniqueLuck, levelData.LuckPerLevel);
        maxFocus.Value = uniqueFocus;

        currentHealth.Value = maxHealth.Value;
        currentAttack.Value = maxAttack.Value;
        currentDefense.Value = maxDefense.Value;
        currentLuck.Value = maxLuck.Value;
        currentFocus.Value = maxFocus.Value;
    }

    protected void UpdateLookAtTargetAsObservable()
    {
        updateLookAtTargetAsObservable = Observable.EveryUpdate()
            .Where(_ => lookTransform != null)
            .Subscribe(_ => 
            {
                Quaternion targetRotation = Quaternion.LookRotation(lookTransform.position - transform.position);
                Quaternion newRotation = Quaternion.Slerp(transform.rotation, targetRotation, 15f * Time.deltaTime);

                transform.rotation = newRotation;
            }).AddTo(this);
    }

    protected void UpdateStateChangeAsObservable()
    {
        characterState.Where(_ => characterState != null)
            .Where(state => state != CharacterState.Death)
            .Subscribe(state =>
            {
                switch (state)
                {
                    case CharacterState.Idle:
                        break;
                    case CharacterState.Dodge:
                        animator.SetTrigger(AnimatorParameter.Dodge);
                        break;
                    case CharacterState.Damage:
                        animator.SetTrigger(AnimatorParameter.Damage);
                        break;
                    case CharacterState.NormalAttack:
                        animator.SetTrigger(AnimatorParameter.NormalAttack);
                        break;
                    case CharacterState.ShortSkill:
                        animator.SetTrigger(AnimatorParameter.ShortSkill);
                        break;
                    case CharacterState.LongSkill:
                        animator.SetTrigger(AnimatorParameter.LongSkill);
                        break;
                }
            }).AddTo(this);
    }

    public void ChangeCharacterState(CharacterState state)
    {
        if (false == this.IsCharacterDead())
        {
            characterState.Value = state;
        }
    }

    public void LookAtTarget(Transform target)
        => lookTransform = target;

    public virtual void GetDamage(int damage)
    {
        ChangeCharacterState(CharacterState.Damage);
        currentHealth.Value -= damage;

        if (currentHealth.Value <= 0)
        {
            currentHealth.Value = 0;

            Die();
        }
    }

    public abstract void Die();
}
