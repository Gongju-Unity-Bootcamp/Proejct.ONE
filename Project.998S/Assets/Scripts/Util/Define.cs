using System;
using Random = UnityEngine.Random;

public static class Define
{
    public static class Keyword
    {
        public const string HOVER = "h";
        public const string SLOT = "slot";
        public const string INFO = "info";
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
        public const float CRITICAL_MULTI = 0.5f;

        /// <summary>
        /// 캐릭터의 생명력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="health">캐릭터 고유 생명력</param>
        /// <param name="healthPerLevel">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Health(int health, int healthPerLevel = 0)
            => health + healthPerLevel;

        /// <summary>
        /// 캐릭터의 공격력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="attack">캐릭터 고유 공격력</param>
        /// <param name="equipAttack">착용 장비 공격력</param>
        /// <param name="attackPerLevel">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Attack(int attack, int equipAttack = 0, int attackPerLevel = 0) 
            => attack + equipAttack + attackPerLevel;

        /// <summary>
        /// 캐릭터의 방어력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="defense">캐릭터 고유 방어력</param>
        /// <returns></returns>
        public static int Defense(int defense, int equipDefense = 0, int defensePerLevel = 0) 
            => defense + equipDefense + defensePerLevel < 0 ? 0 : equipDefense;

        /// <summary>
        /// 캐릭터의 행운을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="currentLuck">캐릭터 고유 행운 또는 장비 정확도</param>
        /// <param name="newLuck">착용 장비 행운 또는 스킬 정확도</param>
        /// <returns></returns>
        public static int Luck(int currentLuck, int newLuck = 0, int luckPerLevel = 0)
        {
            int result = currentLuck + newLuck + luckPerLevel;
           
            switch (result)
            {
                case > 100:
                    result = 100;
                    break;
                case < 0:
                    result = 0;
                    break;
            }

            return result;
        }

        /// <summary>
        /// 캐릭터의 총 데미지를 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="attack">캐릭터 합산 공격력</param>
        /// <param name="Defense">캐릭터 합산 방어력</param>
        /// <param name="luck">캐릭터 합산 행운</param>
        /// <returns></returns>
        public static int Damage(int attack, int Defense, int luck)
        {
            switch (luck)
            {
                case < 0:
                    luck = 0;
                    break;
                case > 100:
                    luck = 100;
                    break;
            }

            int tempLuck = IsChance(luck) == true ? 1 : 0;
            int result = Convert.ToInt32(attack + (attack * CRITICAL_MULTI * tempLuck) - Defense);

            if (result < 0)
            {
                return 1;
            }

            return result;
        }

        /// <summary>
        /// 행운 또는 정확도의 확률을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="luck">행운 또는 정확도</param>
        /// <returns></returns>
        public static bool IsChance(int luck)
        {
            int threshold = Random.Range(0, 100);

            if (threshold < luck)
            {
                return true;
            }

            return false;
        }
    }
}
