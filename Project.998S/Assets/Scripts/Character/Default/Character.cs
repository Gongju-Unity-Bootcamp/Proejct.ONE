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

    [HideInInspector] public ReactiveProperty<int> maxAccuracy { get; private set; }

    [HideInInspector] public ReactiveProperty<int> level { get; set; }
    [HideInInspector] public ReactiveProperty<int> exp { get; set; }
    [HideInInspector] public ReactiveProperty<int> requireExp { get; private set; }
    [HideInInspector] public Skill skill { get; private set; }

    [HideInInspector] public ReactiveProperty<int> currentHealth { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentAttack { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentDefense { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentLuck { get; set; }
    [HideInInspector] public ReactiveProperty<int> currentFocus { get; set; }

    [HideInInspector] public ReactiveProperty<int> currentAccuracy { get; set; }

    [HideInInspector] public ReactiveProperty<SkillData> currentSkill { get; set; }

    [HideInInspector] public ReactiveProperty<int[]> currentEffect { get; set; }

    [HideInInspector] protected int maxLevel { get; private set; }

    [HideInInspector] public ReactiveProperty<CharacterID> characterId { get; private set; }
    [HideInInspector] public ReactiveProperty<string> characterName { get; private set; }
    [HideInInspector] public ReactiveProperty<CharacterState> characterState { get; set; }
    [HideInInspector] public ReactiveProperty<EquipmentID> equipmentId { get; set; }
    [HideInInspector] public ReactiveProperty<int[]> skillIds { get; set; }
    [HideInInspector] public ReactiveProperty<int[]> effectIds { get; set; }
    [HideInInspector] public ReactiveProperty<bool> isAttack { get; set; }

    protected IDisposable updateLookAtTargetAsObservable;
    protected Transform lookTransform;
    protected Animator animator;

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
        
        maxAccuracy = new ReactiveProperty<int>();

        level = new ReactiveProperty<int>();
        exp = new ReactiveProperty<int>();
        requireExp = new ReactiveProperty<int>();
        skill = new Skill();

        currentHealth = new ReactiveProperty<int>();
        currentAttack = new ReactiveProperty<int>();
        currentDefense = new ReactiveProperty<int>();
        currentLuck = new ReactiveProperty<int>();
        currentFocus = new ReactiveProperty<int>();

        currentAccuracy = new ReactiveProperty<int>();

        currentSkill = new ReactiveProperty<SkillData>();
        currentEffect = new ReactiveProperty<int[]>();

        characterId = new ReactiveProperty<CharacterID>();
        characterName = new ReactiveProperty<string>();
        characterState = new ReactiveProperty<CharacterState>();
        equipmentId = new ReactiveProperty<EquipmentID>();
        skillIds = new ReactiveProperty<int[]>();
        effectIds = new ReactiveProperty<int[]>();

        isAttack = new ReactiveProperty<bool>();

        InitInfo(id);
        InitStat(id);

        UpdateLookAtTargetAsObservable();
        UpdateStateChangeAsObservable();
        UpdateSkillChangeAsObservable();
    }

    private void InitInfo(CharacterID id)
    {
        CharacterData data = Managers.Data.Character[id];

        characterId.Value = data.Id;
        characterName.Value = data.Name;
        characterState.Value = CharacterState.Idle;
    }

    private void InitStat(CharacterID id)
    {
        CharacterData data = Managers.Data.Character[id];

        level.Value = (int)data.IdLevel;
        exp.Value = 0;

        UpdateMaxStat(id);
        UpdateCurrentStat();
    }

    public void UpdateMaxStat(CharacterID id)
    {
        CharacterData data = Managers.Data.Character[id];
        LevelData levelData = Managers.Data.Level[data.IdLevel];
        EquipmentData equipmentData = Managers.Data.Equipment[data.IdEquipment];

        maxLevel = Managers.Data.Level.Count;
        requireExp.Value = levelData.Exp;

        equipmentId.Value = equipmentData.Id;
        skillIds.Value = Utils.ReferenceDataByIdEnum(equipmentData.IdSkillEnum);

        maxHealth.Value = Define.Calculate.Health(data.Health, equipmentData.Health, levelData.HealthPerLevel);
        maxAttack.Value = Define.Calculate.Attack(data.Attack, equipmentData.Attack, levelData.AttackPerLevel);
        maxDefense.Value = Define.Calculate.Defense(data.Defense, equipmentData.Defense, levelData.DefensePerLevel);
        maxLuck.Value = Define.Calculate.LuckOrAccuracy(data.Luck, equipmentData.Luck, levelData.LuckPerLevel);
        maxFocus.Value = data.Focus;

        maxAccuracy.Value = Managers.Data.Equipment[equipmentId.Value].Accuracy;
    }

    public void UpdateCurrentStat()
    {
        currentHealth.Value = maxHealth.Value;
        currentAttack.Value = maxAttack.Value;
        currentDefense.Value = maxDefense.Value;
        currentLuck.Value = maxLuck.Value;
        currentFocus.Value = maxFocus.Value;

        currentAccuracy.Value = maxAccuracy.Value;
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

    protected void UpdateSkillChangeAsObservable()
    {
        currentSkill.Subscribe(data => 
        {
            if (data == null)
            {
                return;
            }

            GetSkillEffect(data);
        });
    }

    /// <summary>
    /// 캐릭터의 상태를 변환하는 메소드입니다.
    /// </summary>
    /// <param name="state">캐릭터 상태</param>
    public void ChangeCharacterState(CharacterState state)
    {
        if (false == this.IsCharacterDead())
        {
            characterState.Value = state;
        }
    }

    /// <summary>
    /// 캐릭터의 지정 목표로 회전 값을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="target">지정 목표</param>
    public void LookAtTarget(Transform target)
        => lookTransform = target;

    /// <summary>
    /// 캐릭터가 공격 상태를 판단하는 메소드입니다.
    /// </summary>
    /// <param name="state"></param>
    public virtual void Attack(int state)
        => isAttack.Value = true;

    /// <summary>
    /// 캐릭터가 데미지를 받게 하는 메소드입니다.
    /// </summary>
    /// <param name="damage">총 데미지</param>
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

    /// <summary>
    /// 현재 지정된 스킬의 이펙트를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="data">스킬 데이터</param>
    public Skill GetSkillEffect(SkillData data)
    {
        skill.Damage = data.Damage;
        skill.Accuracy = data.Accuracy;
        maxAccuracy.Value = Managers.Data.Equipment[equipmentId.Value].Accuracy + skill.Accuracy;
        effectIds.Value = Utils.ReferenceDataByIdEnum(data.IdEffectEnum);

        for (int index = 0; index < effectIds.Value.Length; ++ index)
        {
            EffectData effectData = Managers.Data.Effect[(EffectID)effectIds.Value[index]];

            if (true == Define.Calculate.IsChance(effectData.Chance))
            {
                skill.Effect = effectData.Effect;
                skill.Prefab = Managers.Resource.LoadPrefab(effectData.Prefab);
                skill.Target = effectData.Target;
                skill.Animation = effectData.Animation;

                continue;
            }

            if (true == Utils.ArrayIndexExists(effectIds.Value, index + 1))
            {
                EffectData nextEffectData = Managers.Data.Effect[(EffectID)effectIds.Value[index + 1]];

                skill.Effect = nextEffectData.Effect;
                skill.Prefab = Managers.Resource.LoadPrefab(nextEffectData.Prefab);
                skill.Target = nextEffectData.Target;
                skill.Animation = nextEffectData.Animation;
            }
            else
            {
                break;
            }
        }


        return skill;
    }
}
