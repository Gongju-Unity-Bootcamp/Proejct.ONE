using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System;
using UniRx;
using Random = UnityEngine.Random;
using UnityEngine;

public abstract class Controller : MonoBehaviour
{
    [HideInInspector] public List<Dictionary<bool, int>> slotAccuracyDamage { get; set; }
    [HideInInspector] public ReactiveProperty<bool> isAllCharacterDead { get; set; }

    protected bool[] isCharacterDead;
    protected IDisposable updateActionObserver, doAttackAsObservable;
    protected GameObject target;
    protected Coroutine damageDelay;

    private void Start()
        => Init();

    public virtual void Init()
    {
        slotAccuracyDamage = new List<Dictionary<bool, int>>();
        isAllCharacterDead = new ReactiveProperty<bool>();
        isCharacterDead = new bool[SpawnManager.MAX_CHARACTER_COUNT];
        target = Managers.Stage.target;

        UpdateActionAsObservable();
        UpdateTurnAsObservable();
    }

    protected abstract void UpdateActionAsObservable();

    protected abstract Character GetSelectCharacter();

    protected virtual void UpdateTurnAsObservable()
    {
        Managers.Stage.turnCount.Where(_ => Managers.Stage.selectCharacter.Value == null)
            .Subscribe(_ =>
            {
                StartTurn();
            });
    }

    protected abstract void StartTurn();

    /// <summary>
    /// 캐릭터의 타입을 확인한 뒤 결과를 확인하는 메소드입니다.
    /// </summary>
    /// <param name="character">캐릭터</param>
    /// <param name="targetType">타입</param>
    protected virtual void CheckCharacterType(Character character, Type targetType)
    {
        if (character.GetType() != targetType)
        {
            return;
        }

        Managers.Stage.selectCharacter.Value = character;
    }

    /// <summary>
    /// 캐릭터 타입의 배열에서 랜덤으로 캐릭터를 반환하는 메소드입니다.
    /// </summary>
    /// <param name="characters">캐릭터 타입의 배열</param>
    public Character GetRandomCharacterInList(List<Character> characters)
    {
        int random = Random.Range(0, characters.Count);
        bool isDead = true;

        for (int index = 0; index < isCharacterDead.Length; ++index)
        {
            isDead &= isCharacterDead[index];
        }
        if (isDead)
        {
            Array.Fill(isCharacterDead, false);
            isAllCharacterDead.Value = isDead;

            return null;
        }

        if (true == characters[random].IsCharacterDead())
        {
            isCharacterDead[random] = true;

            return GetRandomCharacterInList(characters);
        }

        return characters[random].GetCharacterInGameObject<Character>();
    }

    /// <summary>
    /// 공격 액션을 담당하는 메소드입니다.
    /// </summary>
    public void AttackAction()
    {
        Character targetCharacter = Managers.Stage.selectCharacter.Value;
        Character character = Managers.Stage.turnCharacter.Value;
        EquipmentData equipmentData = Managers.Data.Equipment[character.equipmentId.Value];
        Skill skill = character.GetSkillEffect(character.currentSkill.Value);
        character.ChangeCharacterState(skill.Animation);

        doAttackAsObservable = character.isAttack.Where(_ => character.isAttack.Value == true)
        .Subscribe(_ => 
        {
            character.isAttack.Value = false;
            int totalDamage = slotAccuracyDamage.Select(dictionary => dictionary.Values.Min()).Min();
            targetCharacter.GetDamage(totalDamage);

            StartCoroutine(DelayForEndTurn(Managers.Stage.turnDelay, targetCharacter));
        }).AddTo(this);
    }

    /// <summary>
    /// 다음 턴으로 대기 시간을 설정하는 메소드입니다.
    /// </summary>
    /// <param name="delay">다음 턴 대기 시간</param>
    protected virtual IEnumerator DelayForEndTurn(float delay, Character character)
    {
        yield return new WaitForSeconds(delay);

        character.ChangeCharacterState(CharacterState.Idle);
        doAttackAsObservable.Dispose();
        Managers.Stage.NextCharacterTurn();
    }
}
