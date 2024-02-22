using UnityEngine;

public static class AnimatorParameter
{
    public static readonly int Death = Animator.StringToHash("Death");
    public static readonly int Dodge = Animator.StringToHash("Dodge");
    public static readonly int NormalAttack = Animator.StringToHash("NAttack");
    public static readonly int ShortSkill = Animator.StringToHash("SSkill");
    public static readonly int LongSkill = Animator.StringToHash("LSkill");
    public static readonly int Damage = Animator.StringToHash("Damage");
    public static readonly int Idle = Animator.StringToHash("Idle");
}
