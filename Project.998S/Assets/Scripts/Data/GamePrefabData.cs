public enum GamePrefabID
{
    Index = 0,
    Dungeon,
    Spawn,
    Highlight
}

public class GamePrefabData
{
    public GamePrefabID Id { get; set; }
    public string Prefab { get; set; }
}
