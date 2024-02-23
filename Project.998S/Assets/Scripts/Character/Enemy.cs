using UnityEngine;

public class Enemy : Character
{
    public override void Init(CharacterID id)
    {
        base.Init(id);
    }

    public override void Die()
    {
        animator.SetTrigger(AnimatorParameter.Dead);
        animator.SetBool(AnimatorParameter.Death, true);
        ChangeCharacterState(CharacterState.Death);
    }
}
