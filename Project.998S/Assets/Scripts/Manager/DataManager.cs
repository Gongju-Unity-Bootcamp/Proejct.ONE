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
    public Dictionary<RewardID, RewardData> Reward { get; private set; }
    public Dictionary<CharacterID, CharacterData> Character { get; private set; }
    public Dictionary<LevelID, LevelData> Level { get; private set; }
    public Dictionary<SkillID, SkillData> Skill { get; private set; }
    public Dictionary<EffectID, EffectData> Effect { get; private set; }
    public List<PrefabData> Prefab { get; private set; }
    public Dictionary<EquipmentID, EquipmentData> Equipment { get; private set; }
    public Dictionary<ConsumptionID, ConsumptionData> Consumption { get; private set; }

    public void Init()
    {
        Stage = ParseToDictionary<StageID, StageData>(string.Concat(Define.Path.TABLE, Define.Table.STAGE), data => data.Id);
        Reward = ParseToDictionary<RewardID, RewardData>(string.Concat(Define.Path.TABLE, Define.Table.REWARD), data => data.Id);
        Character = ParseToDictionary<CharacterID, CharacterData>(string.Concat(Define.Path.TABLE, Define.Table.CHARACTER), data => data.Id);
        Level = ParseToDictionary<LevelID, LevelData>(string.Concat(Define.Path.TABLE, Define.Table.LEVEL), data => data.Id);
        Skill = ParseToDictionary<SkillID, SkillData>(string.Concat(Define.Path.TABLE, Define.Table.SKILL), data => data.Id);
        Effect = ParseToDictionary<EffectID, EffectData>(string.Concat(Define.Path.TABLE, Define.Table.EFFECT), data => data.Id);
        Prefab = ParseToList<PrefabData>(string.Concat(Define.Path.TABLE, Define.Table.PREFAB));
        Equipment = ParseToDictionary<EquipmentID, EquipmentData>(string.Concat(Define.Path.TABLE, Define.Table.EQUIPMENT), data => data.Id);
        Consumption = ParseToDictionary<ConsumptionID, ConsumptionData>(string.Concat(Define.Path.TABLE, Define.Table.CONSUMPTION), data => data.Id);

    }

    private List<T> ParseToList<T>([NotNull] string path)
    {
        using StreamReader reader = new StreamReader(path);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<T>().ToList();
    }

    private Dictionary<Key, Item> ParseToDictionary<Key, Item>([NotNull] string path, Func<Item, Key> keySelector)
    {
        using StreamReader reader = new StreamReader(path);
        using CsvReader csv = new CsvReader(reader, CultureInfo.InvariantCulture);

        return csv.GetRecords<Item>().ToDictionary(keySelector);
    }
}
