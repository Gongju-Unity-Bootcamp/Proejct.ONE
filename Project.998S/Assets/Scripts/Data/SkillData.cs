public enum SkillID
{
    Index = 2000,
}

public class SkillData
{
    public SkillID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Damage { get; set; }
    public int Accuracy { get; set; }
    public EffectID EffectId { get; set;}
}