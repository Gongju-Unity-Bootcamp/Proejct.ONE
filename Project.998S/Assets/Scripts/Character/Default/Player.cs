using UnityEngine;

public class Player : Character
{
    public override void Die()
    {
        animator.SetBool(AnimatorParameter.Death, true);
    }
}