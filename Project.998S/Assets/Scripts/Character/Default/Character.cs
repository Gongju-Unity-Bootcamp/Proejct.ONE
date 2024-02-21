using UniRx;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    private const int MAX_SKILL_COUNT = 2;

    [SerializeField] protected int maxHealth;
    [SerializeField] protected int maxAttack;
    [SerializeField] protected int maxDefense;
    [Range(0, 100)] [SerializeField] protected int maxLuck = 0;
    [Range(0, 3)] [SerializeField] protected int maxFocus = 3;

    [SerializeField] protected short level;
    [SerializeField] protected int exp;

    [HideInInspector] public ReactiveProperty<int> currentHealth;
    [HideInInspector] public ReactiveProperty<int> currentAttack;
    [HideInInspector] public ReactiveProperty<int> currentDefense;
    [HideInInspector] public ReactiveProperty<int> currentLuck;
    [HideInInspector] public ReactiveProperty<int> currentFocus;

    [HideInInspector] public Skill[] skills;

    [HideInInspector] public CharacterID characterId;
    [HideInInspector] public string characterName;

    [HideInInspector] public CharacterState state;

    protected Animator animator;

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

        skills = new Skill[MAX_SKILL_COUNT];

        characterId = id;
        characterName = Managers.Data.Character[id].Name;

        InitStat(Managers.Data.Character[id]);
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

    public virtual void LookTarget(Character character)
    {
        transform.LookAt(character.transform);
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
