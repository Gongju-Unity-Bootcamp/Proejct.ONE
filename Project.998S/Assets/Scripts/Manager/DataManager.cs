using CsvHelper;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;

public class DataManager
{
    private readonly string tablePath = "Assets/Resources/Tables/";
    public Dictionary<StageID, StageData> Stage { get; private set; }
    public Dictionary<CharacterID, CharacterData> Character { get; private set; }
    public Dictionary<Level, LevelData> Level { get; private set; }
    public Dictionary<SkillID, SkillData> Skill { get; private set; }
    public Dictionary<EffectID, EffectData> Effect { get; private set; }
    public List<GameData> Game { get; private set; }

    public void Init()
    {
        Stage = ParseToDictionary<StageID, StageData>($"{tablePath}StageTable.csv", data => data.Id);
        Character = ParseToDictionary<CharacterID, CharacterData>($"{tablePath}CharacterTable.csv", data => data.Id);
        Level = ParseToDictionary<Level, LevelData>($"{tablePath}LevelTable.csv", data => data.Level);
        Skill = ParseToDictionary<SkillID, SkillData>($"{tablePath}SkillTable.csv", data => data.Id);
        Effect = ParseToDictionary<EffectID, EffectData>($"{tablePath}EffectTable.csv", data => data.Id);
        Game = ParseToList<GameData>($"{tablePath}GameTable.csv");
    }

    private List<T> ParseToList<T>([NotNull] string path)
    {
        using var reader = new StreamReader(path);
        using var csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<T>().ToList();
    }

    private Dictionary<Key, Item> ParseToDictionary<Key, Item>([NotNull] string path, Func<Item, Key> keySelector)
    {
        using var reader = new StreamReader(path);
        using var csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<Item>().ToDictionary(keySelector);
    }
}
