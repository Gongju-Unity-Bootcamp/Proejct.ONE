using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System;
using UniRx;

public enum EnemyActionState
{
    LowHealthTargetAttack,
    HighHealthTargetAttack,
    Defense,
    LowChanceTry,
    HighChanceTry,
    Runaway
}

public class EnemyController : Controller
{
    public const int DEFAULT_CARDINATE = 0;

    public Dictionary<EnemyActionState, int> threadholds = new Dictionary<EnemyActionState, int>()
    {
            { EnemyActionState.LowHealthTargetAttack, 40 },
            { EnemyActionState.HighHealthTargetAttack, 80 },

            { EnemyActionState.LowChanceTry, 80 },
            { EnemyActionState.HighChanceTry, 40 },
    };
    public ReactiveProperty<EnemyActionState> enemyActionState { get; set; }
    public ReactiveProperty<int> cardinate { get; set; }

    public SkillData SkillData { get; private set; }

    public override void Init()
    {
        base.Init();

        isSelectCharacter.Value = false;

        enemyActionState = new ReactiveProperty<EnemyActionState>();
        cardinate = new ReactiveProperty<int>();

        enemyActionState.Value = EnemyActionState.Defense;
        cardinate.Value = DEFAULT_CARDINATE;

        SkillData = new SkillData();

        CharacterTurnAsObservable(Managers.Stage.isEnemyTurn);
    }

    protected override void ActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate().Where(_ => Managers.Stage.selectCharacter.Value == null)
            .Where(_ => Managers.Stage.isEnemyTurn.Value && !isSelectCharacter.Value == true)
            .Select(_ => GetRandomCharacter())
            .Subscribe(character =>
            {
                isSelectCharacter.Value = true;

                if (Managers.Game.Enemy.isAllEnemyCharacterDead.Value)
                {
                    Managers.Game.GameFail();
                    return;
                }

                SetAttackTypeByChance(character);
            });
    }

    protected override void StartTurn(ReactiveProperty<bool> isCharacterTurn)
    {
        StageManager stage = Managers.Stage;
        enemyActionState.Value = EntryThreadholds(EnemyActionState.LowHealthTargetAttack, EnemyActionState.HighHealthTargetAttack);
        Managers.Stage.AllCharacterLookAtTarget(stage.turnCharacter.Value);
    }

    private Character GetRandomCharacter()
    {
        switch (enemyActionState.Value)
        {
            case EnemyActionState.LowHealthTargetAttack:
                return GetCharacterByHealthInList(Managers.Stage.players, false);
            case EnemyActionState.HighHealthTargetAttack:
                return GetCharacterByHealthInList(Managers.Stage.players, true);
        }

        return GetCharacterByRandomInList(Managers.Stage.players);
    }

    private void SetAttackTypeByChance(Character character)
    {
        StageManager stage = Managers.Stage;
        stage.selectCharacter.Value = character;
        Character turnCharacter = stage.turnCharacter.Value;
        int skillCount = turnCharacter.skillIdEnum.Value.Length;
        SkillData[] skillDataEnum = new SkillData[skillCount];

        for (int index = 0; index < skillCount; ++index)
        {
            skillDataEnum[index] = Managers.Data.Skill[(SkillID)turnCharacter.skillIdEnum.Value[index]];
        }

        enemyActionState.Value = EntryThreadholds(EnemyActionState.LowChanceTry, EnemyActionState.HighChanceTry);
        
        switch (enemyActionState.Value)
        {
            case EnemyActionState.LowChanceTry:
                SelectCharacterSkill(turnCharacter, skillDataEnum, false);

                break;
            case EnemyActionState.HighChanceTry:
                SelectCharacterSkill(turnCharacter, skillDataEnum, true);
                break;
        }
    }

    private void SelectCharacterSkill(Character character, SkillData[] skillDataEnum, bool isHighDamage)
    {
        Character targetCharacter = Managers.Stage.selectCharacter.Value;

        UseSkill(character, skillDataEnum, isHighDamage);

        int damage = Define.Calculate.Damage(character.currentAttack.Value + SkillData.Damage, targetCharacter.currentDefense.Value, character.currentLuck.Value);
        slotAccuracyDamage = Define.Calculate.Accuracy(damage, character.currentAccuracy.Value);

        // NOTE : PlayerActionPopup의 로직과 중복됨. 시간 없어서 일단 기존 코드 사용.
        Managers.Stage.turnCharacter.Value.currentSkill.Value = SkillData;

        Managers.Game.Enemy.AttackDamage = damage;

        AttackAction();
        Managers.UI.OpenPopup<EnemyActionPopup>();
    }

    private void UseSkill(Character character, SkillData[] dataEnum, bool isHighDamage)
    {
        if (isHighDamage)
        {
            SkillData = dataEnum.OrderBy(skill => skill.Damage).Max();
            character.currentSkill.Value = SkillData;
        }
        else
        {
            SkillData = dataEnum.OrderByDescending(skill => skill.Damage).First();
            character.currentSkill.Value = SkillData;
        }
    }

    private EnemyActionState EntryThreadholds(EnemyActionState currentState, EnemyActionState newState)
    {
        cardinate.Value = Define.Calculate.AdjustCardinate(cardinate.Value);
        int currentValue = Math.Abs(threadholds[currentState] - cardinate.Value);
        int newValue = Math.Abs(threadholds[newState] - cardinate.Value);

        if (currentValue > newValue)
        {
            return currentState;
        }

        return newState;
    }
}
