using System.Collections.Generic;
using System;
using Random = UnityEngine.Random;
using UnityEngine;
using static Utils.Utilities;

public static class Define
{
    public static class Keyword
    {
        public const string INFO = "I";
        public const string HOVER = "H";
        public const string BASIC = "Basic";
        public const string SUCCESS = "Success";
        public const string FOCUS = "Focus";
        public const string FAIL = "Fail";
    }

    public static class Table
    {
        public const string STAGE = "StageTable.csv";
        public const string REWARD = "RewardTable.csv";
        public const string CHARACTER = "CharacterTable.csv";
        public const string LEVEL = "LevelTable.csv";
        public const string SKILL = "SkillTable.csv";
        public const string EFFECT = "EffectTable.csv";
        public const string PREFAB = "PrefabTable.csv";
        public const string EQUIPMENT = "EquipmentTable.csv";
        public const string CONSUMPTION = "ConsumptionTable.csv";
    }

    public static class Path
    {
        public const string ANIMATOR = "Animators/";
        public const string TEXTURE = "Textures/";
        public const string IMAGE = "Images/";
        public const string MATERIAL = "Materials/";
        public const string PREFAB = "Prefabs/";
        public const string SPRITE = "Sprites/";

        public const string TABLE = "Assets/Resources/Tables/";
    }

    public static class Calculate
    {
        public const float CRITICAL_MULTI = 0.5f, SLOT_LOSS = 0.3f;
        public const int MAX_SLOT = 3, MAX_STAT = 100, MIN_STAT = 0;

        /// <summary>
        /// 캐릭터의 생명력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="health">캐릭터 고유 생명력</param>
        /// <param name="equipmentHealth">착용 장비 생명력</param>
        /// <param name="healthPerLevel">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Health(int health, int equipmentHealth, int healthPerLevel = 0)
            => health + equipmentHealth + healthPerLevel;

        /// <summary>
        /// 캐릭터의 공격력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="attack">캐릭터 고유 공격력</param>
        /// <param name="equipmentAttack">착용 장비 공격력</param>
        /// <param name="attackPerLevel">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Attack(int attack, int equipmentAttack = 0, int attackPerLevel = 0) 
            => attack + equipmentAttack + attackPerLevel;

        /// <summary>
        /// 캐릭터의 방어력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="defense">캐릭터 고유 방어력</param>
        /// <param name="equipmentDefense">착용 장비 방어력</param>
        /// <param name="defensePerLevel">레벨 당 증가량</param>
        public static int Defense(int defense, int equipmentDefense = 0, int defensePerLevel = 0) 
            => defense + equipmentDefense + defensePerLevel < 0 ? 0 : defense + equipmentDefense + defensePerLevel;

        /// <summary>
        /// 캐릭터의 행운 혹은 슬롯 정확도를 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="currentLOA">캐릭터 고유 행운 또는 장비 정확도</param>
        /// <param name="newLOA">착용 장비 행운 또는 스킬 정확도</param>
        /// <param name="luckPerLevel">레벨 당 증가량</param>
        public static int LuckOrAccuracy(int currentLOA, int newLOA = 0, int luckPerLevel = 0)
        {
            int result = currentLOA + newLOA + luckPerLevel;
            result = result < 100 ? result < 0 ? 0 : result : 100;

            return result;
        }

        /// <summary>
        /// 캐릭터의 슬롯 데미지를 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="damage">데미지</param>
        /// <param name="accuracy">정확도</param>
        public static List<Dictionary<bool, int>> Accuracy(int damage, int focus = 0, int accuracy = 0)
        {
            List<Dictionary<bool, int>> result = new List<Dictionary<bool, int>>();

            for (int index = 0; index < MAX_SLOT; ++index)
            {
                if (index < focus)
                {
                    result.Add(ReturnDictionary(true, damage));

                    continue;
                }

                bool isCheckChance = IsChance(accuracy);

                if (isCheckChance)
                {
                    result.Add(ReturnDictionary(isCheckChance, damage));
                }
                else
                {
                    result.Add(ReturnDictionary(isCheckChance, Convert.ToInt32(damage * SLOT_LOSS)));
                }
            }

            return result;
        }

        /// <summary>
        /// 캐릭터의 총 데미지를 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="attack">캐릭터 합산 공격력</param>
        /// <param name="Defense">캐릭터 합산 방어력</param>
        /// <param name="luck">캐릭터 합산 행운</param>
        public static int Damage(int attack, int Defense = 0, int luck = 0)
        {
            luck = luck < 100 ? luck < 0 ? 0 : luck : 100;
            int tempLuck = IsChance(luck) == true ? 1 : 0;
            int result = Convert.ToInt32(attack + (Math.Floor(attack * CRITICAL_MULTI * tempLuck)) - Defense);

            if (result <= 0)
            {
                Debug.Log(result + " case : 1 ");
                return 1;
            }

            return result;
        }

        /// <summary>
        /// 행운 또는 정확도의 확률을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="luckOrAccuracy">행운 또는 정확도</param>
        public static bool IsChance(int luckOrAccuracy)
        {
            int threshold = Random.Range(0, 100);

            if (threshold < luckOrAccuracy)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// 보간값을 설정하여 위치값을 조정합니다.
        /// </summary>
        /// <param name="cardinate">임계값</param>
        /// <param name="adjustment">보간값</param>
        public static int AdjustCardinate(int cardinate, int adjustment = 0)
        {
            int random = Random.Range(-5, 5);
            int adjust = cardinate + adjustment + random;

            return Mathf.Clamp(adjust, 0, 100);
        }
    }
}
