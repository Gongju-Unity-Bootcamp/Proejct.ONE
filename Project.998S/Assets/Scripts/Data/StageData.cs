public enum StageID
{
    Index = 0,
}

public class StageData
{
    public StageID Id { get; set; }
    public string Name { get; set; }
    public int Left { get; set; }
    public int Center { get; set; }
    public int Right { get; set; }
}
