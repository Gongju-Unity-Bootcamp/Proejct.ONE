public enum SkillEffect
{
    Immediately,
    Continuously,
    Buff,
    Debuff
}

public enum SkillTarget
{
    Self,
    players,
    Other,
    Enemies,
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
    public int Value { get; set; }
    public int Accuracy { get; set; }
}
