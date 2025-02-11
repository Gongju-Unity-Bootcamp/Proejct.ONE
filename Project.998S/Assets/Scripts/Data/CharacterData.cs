public enum CharacterID
{
    None = 0,
    Index = 1000,
}

public enum CharacterIndex
{
    Left = 0,
    Center = 1,
    Right = 2
}

public enum CharacterState
{
    Idle,
    Dodge,
    Dead,
    Damage,
    NormalAttack,
    ShortSkill,
    LongSkill
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
    public LevelID IdLevel { get; set; }
    public EquipmentID IdEquipment { get; set; }
}
