using System.Collections.Generic;
using System.Linq;
using System;
using UniRx;
using UnityEngine;

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

    [HideInInspector] public Dictionary<EnemyActionState, int> threadholds = new Dictionary<EnemyActionState, int>()
    {
            { EnemyActionState.LowHealthTargetAttack, 40 },
            { EnemyActionState.HighHealthTargetAttack, 80 },

            { EnemyActionState.LowChanceTry, 80 },
            { EnemyActionState.HighChanceTry, 40 },
    };
    [HideInInspector] public ReactiveProperty<EnemyActionState> enemyActionState { get; set; }
    [HideInInspector] public ReactiveProperty<int> cardinate { get; set; }

    public override void Init()
    {
        base.Init();

        isSelectCharacter.Value = false;

        enemyActionState = new ReactiveProperty<EnemyActionState>();
        cardinate = new ReactiveProperty<int>();

        enemyActionState.Value = EnemyActionState.Defense;
        cardinate.Value = DEFAULT_CARDINATE;

        UpdateTurnAsObservable(Managers.Stage.isEnemyTurn);
    }

    protected override void UpdateActionAsObservable()
    {
        updateActionObserver = Observable.EveryUpdate().Where(_ => Managers.Stage.selectCharacter.Value == null)
            .Where(_ => Managers.Stage.isEnemyTurn.Value && !isSelectCharacter.Value == true)
            .Select(_ => GetRandomCharacter())
            .Subscribe(character =>
            {
                isSelectCharacter.Value = true;
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
                return GetCharacterByRandomInList(Managers.Stage.players, false);
            case EnemyActionState.HighHealthTargetAttack:
                return GetCharacterByRandomInList(Managers.Stage.players, true);
        }

        return GetCharacterByRandomInList(Managers.Stage.players);
    }

    private void SetAttackTypeByChance(Character character)
    {
        StageManager stage = Managers.Stage;
        stage.selectCharacter.Value = character;
        Character turnCharacter = stage.turnCharacter.Value;
        int skillCount = turnCharacter.skillIds.Value.Length;
        SkillData[] skillDatas = new SkillData[skillCount];

        for (int index = 0; index < skillCount; ++index)
        {
            skillDatas[index] = Managers.Data.Skill[(SkillID)turnCharacter.skillIds.Value[index]];
        }

        enemyActionState.Value = EntryThreadholds(EnemyActionState.LowChanceTry, EnemyActionState.HighChanceTry);
        
        switch (enemyActionState.Value)
        {
            case EnemyActionState.LowChanceTry:
                UseSkill(turnCharacter, skillDatas, true);

                break;
            case EnemyActionState.HighChanceTry:
                UseSkill(turnCharacter, skillDatas, true);
                break;
        }
    }

    private void UseSkill(Character character, SkillData[] skillDatas, bool isHighDamage)
    {
        Character targetCharacter = Managers.Stage.selectCharacter.Value;
        SkillData data = new SkillData();

        if (isHighDamage)
        {
            data = skillDatas.OrderBy(skill => skill.Damage).Max();
            character.currentSkill.Value = data;
        }
        else
        {
            data = skillDatas.OrderByDescending(skill => skill.Damage).First();
            character.currentSkill.Value = data;
        }

        int damage = Define.Calculate.Damage(character.currentAttack.Value
            + data.Damage, targetCharacter.currentDefense.Value,
            character.currentLuck.Value);
        slotAccuracyDamage = Define.Calculate.Accuracy(damage, character.currentAccuracy.Value);
        AttackAction();

        Managers.UI.OpenPopup<EnemyActionPopup>();
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
