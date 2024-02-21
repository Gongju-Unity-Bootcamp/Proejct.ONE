public enum GameAssetName
{
    Dungeon = 0,
    Spawn = 1,
    Highlight = 2
}

public class GameData
{
    public GameAssetName Index { get; set; }
    public string Prefab { get; set; }
}
