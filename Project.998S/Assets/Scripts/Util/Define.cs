using System;
using Random = UnityEngine.Random;

public static class Define
{
    public static class Table
    {
        public const string STAGE = "StageTable.csv";
        public const string CHARACTER = "CharacterTable.csv";
        public const string LEVEL = "LevelTable.csv";
        public const string SKILL = "SkillTable.csv";
        public const string EFFECT = "EffectTable.csv";
        public const string GAMEPREFAB = "GamePrefabTable.csv";
        public const string EQUIP = "EquipTable.csv";
        public const string CONSUMP = "ConsumpTable.csv";
    }

    public static class Path
    {
        public const string ANIMATOR = "Animators/";
        public const string ICON = "Icons/";
        public const string MATERIAL = "Materials/";
        public const string PREFAB = "Prefabs/";
        public const string SPRITE = "Sprites/";

        public const string TABLE = "Assets/Resources/Tables/";
    }

    public static class Calculate
    {
        public const float CRITICAL_MULTI = 0.5f, LEVEL_PER_HEALTH = 0.1f, LEVEL_PER_ATTACK = 1f;

        /// <summary>
        /// 캐릭터의 생명력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="health">캐릭터 고유 생명력</param>
        /// <param name="level">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Health(int health, int level = 1) 
            => health + level + Convert.ToInt32(LEVEL_PER_HEALTH * level);

        /// <summary>
        /// 캐릭터의 공격력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="attack">캐릭터 고유 공격력</param>
        /// <param name="weaponAttack">착용 장비 공격력</param>
        /// <param name="level">캐릭터 현재 레벨</param>
        /// <returns></returns>
        public static int Attack(int attack, int weaponAttack = 0, int level = 1) 
            => attack + weaponAttack + Convert.ToInt32(LEVEL_PER_ATTACK * level);

        /// <summary>
        /// 캐릭터의 방어력을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="defense">캐릭터 고유 방어력</param>
        /// <returns></returns>
        public static int Defense(int defense) 
            => defense < 0 ? 0 : defense;

        /// <summary>
        /// 캐릭터의 행운을 계산하기 위한 메소드입니다.
        /// </summary>
        /// <param name="currentluck">캐릭터 고유 행운 또는 장비 정확도</param>
        /// <param name="newluck">착용 장비 행운 또는 스킬 정확도</param>
        /// <returns></returns>
        public static int Luck(int currentluck, int newluck)
        {
            int result = currentluck + newluck;
           
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
        /// <param name="armor">캐릭터 합산 방어력</param>
        /// <param name="luck">캐릭터 합산 행운</param>
        /// <returns></returns>
        public static int Damage(int attack, int armor, int luck)
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
            int result = Convert.ToInt32(attack + (attack * CRITICAL_MULTI * tempLuck) - armor);

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
