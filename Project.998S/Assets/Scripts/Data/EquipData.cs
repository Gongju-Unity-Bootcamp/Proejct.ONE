public enum EquipID
{
    Index = 10000,
}

public class EquipData
{
    public EquipID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Health { get; set; }
    public int Attack { get; set; }
    public int Defense { get; set; }
    public int Luck { get; set; }
    public int Accuracy { get; set; }
    public SkillID Skill1Id { get; set; }
    public SkillID Skill2Id { get; set; }
}
