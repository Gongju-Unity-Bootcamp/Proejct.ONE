public enum CharacterPosition
{
    Left,
    Center,
    Right
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
    public int Type { get; set; }
    public int Health { get; set; }
    public int Attack { get; set; }
    public int Defense { get; set; }
    public int Luck { get; set; }
    public int Focus { get; set; }
    public SkillID SkillId { get; set; }
    public Level Level { get; set; }
}
