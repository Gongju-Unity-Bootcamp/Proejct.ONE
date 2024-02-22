using UnityEngine;

public class Target : MonoBehaviour
{
    [HideInInspector] public Character character;

    public void OnEnable() => character = Managers.Game.selectCharacter.Value;
}
