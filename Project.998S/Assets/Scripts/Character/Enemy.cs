using UnityEngine;

public class Enemy : Character
{
    public override void Init(CharacterID id)
    {
        base.Init(id);
    }

    public override void Die()
    {
        animator.SetBool(AnimatorParameter.Death, true);
        characterState.Value = CharacterState.Death;
    }
}
