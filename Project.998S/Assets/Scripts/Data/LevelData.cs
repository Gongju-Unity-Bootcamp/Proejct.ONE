public enum LevelID
{
    Index = 0,
}

public class LevelData
{
    public LevelID Id { get; set; }
    public int Level { get; set; }
    public int Exp { get; set; }
    public int HealthPerLevel { get; set; }
    public int AttackPerLevel { get; set; }
    public int DefensePerLevel { get; set; }
    public int LuckPerLevel { get; set; }
}
