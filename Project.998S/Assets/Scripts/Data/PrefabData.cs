public enum PrefabID
{
    Dungeon = 0,
    Spawn,
    Highlight
}

public class PrefabData
{
    public PrefabID Id { get; set; }
    public string Prefab { get; set; }
}
