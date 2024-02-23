public enum ConsumptionID
{
    Index = 20000,
}

public class ConsumptionData
{
    public ConsumptionID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Stat { get; set; }
    public int Value { get; set; }
    public int Cost { get; set; }
}
