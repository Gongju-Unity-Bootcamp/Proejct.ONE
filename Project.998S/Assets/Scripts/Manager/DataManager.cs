using CsvHelper;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;

public class DataManager
{
    public Dictionary<StageID, StageData> Stage { get; private set; }
    public Dictionary<CharacterID, CharacterData> Character { get; private set; }
    public List<LevelData> Level { get; private set; }
    public Dictionary<SkillID, SkillData> Skill { get; private set; }
    public Dictionary<EffectID, EffectData> Effect { get; private set; }
    public Dictionary<GamePrefabID, GamePrefabData> GamePrefab { get; private set; }
    public Dictionary<EquipID, EquipData> Equip { get; private set; }
    public Dictionary<ConsumpID, ConsumpData> Consump { get; private set; }

    public void Init()
    {
        Stage = ParseToDictionary<StageID, StageData>(string.Concat(Define.Path.TABLE, Define.Table.STAGE), data => data.Id);
        Character = ParseToDictionary<CharacterID, CharacterData>(string.Concat(Define.Path.TABLE, Define.Table.CHARACTER), data => data.Id);
        Level = ParseToList<LevelData>(string.Concat(Define.Path.TABLE, Define.Table.LEVEL));
        Skill = ParseToDictionary<SkillID, SkillData>(string.Concat(Define.Path.TABLE, Define.Table.SKILL), data => data.Id);
        Effect = ParseToDictionary<EffectID, EffectData>(string.Concat(Define.Path.TABLE, Define.Table.EFFECT), data => data.Id);
        GamePrefab = ParseToDictionary<GamePrefabID, GamePrefabData>(string.Concat(Define.Path.TABLE, Define.Table.GAMEPREFAB), data => data.Id);
        Equip = ParseToDictionary<EquipID, EquipData>(string.Concat(Define.Path.TABLE, Define.Table.EQUIP), data => data.Id);
        Consump = ParseToDictionary<ConsumpID, ConsumpData>(string.Concat(Define.Path.TABLE, Define.Table.CONSUMP), data => data.Id);

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
