using UnityEngine;

public class Skill
{
    public int Damage { get; set; }
    public int Accuracy { get; set; }
    public SkillEffect Effect { get; set; }
    public GameObject Prefab { get; set; }
    public SkillTarget Target { get; set; }
    public CharacterState Animation { get; set; }
    public int Chance { get; set; }
}
