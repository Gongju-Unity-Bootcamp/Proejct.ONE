public enum ConsumpID
{
    Index = 20000,
}

public class ConsumpData
{
    public ConsumpID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Stat { get; set; }
    public int Value { get; set; }
}
