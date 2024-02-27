public enum SkillID
{
    None = 0,
    Index = 2000,
}
public enum SkillEffect
{
    Immediately = 1,
    CrowdControl = 2,
    Buff = 3,
    Debuff = 4
}

public enum SkillTarget
{
    Self = 1,
    players = 2,
    Other = 3,
    Enemies = 4
}

public enum SkillSlotState
{
    Basic,
    Success,
    Fail,
    Focus
}


public class SkillData
{
    public SkillID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Damage { get; set; }
    public int Accuracy { get; set; }
    public string IdEffectEnum { get; set; }
}