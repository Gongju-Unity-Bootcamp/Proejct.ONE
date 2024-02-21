public enum SkillAnimation
{
    NormalAttack = 1,
    ShortSkill = 2,
    LongSkill = 3
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

public enum EffectID
{
    Index = 3000,
}

public class EffectData
{
    public EffectID Id { get; set; }
    public int Effect { get; set; }
    public int Target { get; set; }
    public int Animation { get; set; }
    public int Chance { get; set; }
    public EffectID EffectId { get; set; }
}
