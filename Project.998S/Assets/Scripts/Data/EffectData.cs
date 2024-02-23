public enum EffectAnimation
{
    NormalAttack = 0,
    ShortSkill = 1,
    LongSkill
}

public enum EffectID
{
    None = 0,
    Index = 3000,
}

public class EffectData
{
    public EffectID Id { get; set; }
    public int Effect { get; set; }
    public int Target { get; set; }
    public EffectAnimation Animation { get; set; }
    public int Chance { get; set; }
}
