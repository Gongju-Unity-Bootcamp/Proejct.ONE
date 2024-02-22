using UnityEngine;

public class Player : Character
{
    public override void Init(CharacterID id)
    {
        base.Init(id);

        InitInventory(Managers.Data.Character[id]);
    }

    public override void Die()
    {
        animator.SetBool(AnimatorParameter.Death, true);
        characterState.Value = CharacterState.Death;
    }

    protected void InitInventory(CharacterData data)
    {

    }
}