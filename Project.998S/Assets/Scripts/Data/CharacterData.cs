public enum CharacterState
{
    Idle,
    Dodge,
    Damage,
    Death,
    NormalAttack,
    ShortSkill,
    LongSkill
}

public enum CharacterPosition
{
    Left = 0,
    Center = 1,
    Right = 2
}

public enum CharacterID
{
    Index = 1000,
}

public class CharacterData
{
    public CharacterID Id { get; set; }
    public string Name { get; set; }
    public string Prefab { get; set; }
    public int Health { get; set; }
    public int Attack { get; set; }
    public int Defense { get; set; }
    public int Luck { get; set; }
    public int Focus { get; set; }
    public Level Level { get; set; }
    public SkillID SkillId { get; set; }
    public EquipID EquipId { get; set; }
}
