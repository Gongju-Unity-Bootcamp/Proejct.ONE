using System;
using UnityEngine;

public abstract class Controller : MonoBehaviour
{
    #region Fields
    public const float ROTATION_SPEED = 5f;

    [HideInInspector] public IDisposable updateObserver { get; set; }
    #endregion

    public virtual void Init()
    {

    }

    public void SelectTarget(Character character)
    {
        if (Managers.Game.Target.transform.position == character.transform.position)
        {
            return;
        }

        Managers.Game.Target.transform.position = character.transform.position;
        Managers.Game.Target.gameObject.SetActive(false);
    }

    public void LookAtTarget(Character character)
    {
        Quaternion targetRotation = Quaternion.LookRotation(Managers.Game.Target.transform.position - character.transform.position);
        Quaternion newRotation = Quaternion.Slerp(transform.rotation, targetRotation, ROTATION_SPEED * Time.deltaTime);

        character.transform.rotation = newRotation;
    }
}
