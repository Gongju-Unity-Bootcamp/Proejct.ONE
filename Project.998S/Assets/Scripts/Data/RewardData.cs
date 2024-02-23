public enum RewardID
{
    Index = 5000,
}

public class RewardData
{
    public RewardID Id { get; set; }
    public int Exp { get; set; }
    public string IdEquipmentEnum { get; set; }
    public string IdConsumptionEnum { get; set; }
}
