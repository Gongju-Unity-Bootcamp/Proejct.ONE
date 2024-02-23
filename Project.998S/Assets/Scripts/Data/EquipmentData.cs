public enum EquipmentID
{
    None = 0,
    Index = 10000,
}

public class EquipmentData
{
    public EquipmentID Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public int Health { get; set; }
    public int Attack { get; set; }
    public int Defense { get; set; }
    public int Luck { get; set; }
    public int Accuracy { get; set; }
    public int Cost { get; set; }
    public string IdSkillEnum { get; set; }
}
