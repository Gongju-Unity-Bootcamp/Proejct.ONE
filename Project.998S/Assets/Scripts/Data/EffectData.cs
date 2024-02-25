public enum EffectAnimation
{
    NormalAttack = 1,
    ShortSkill = 2,
    LongSkill = 3
}

public enum EffectID
{
    None = 0,
    Index = 3000,
}

public class EffectData
{
    public EffectID Id { get; set; }
    public SkillEffect Effect { get; set; }
    public string Prefab { get; set; }
    public SkillTarget Target { get; set; }
    public CharacterState Animation { get; set; }
    public int Chance { get; set; }
}
