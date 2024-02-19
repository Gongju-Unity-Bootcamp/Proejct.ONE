public enum SkillID
{
    Index = 2000,
}

public class SkillData
{
    public SkillID Id { get; set; }
    public string Name { get; set; }
    public string Prefab { get; set; }
    public string Icon { get; set; }
    public int Animation { get; set; }
    public EffectID EffectId { get; set;}
}