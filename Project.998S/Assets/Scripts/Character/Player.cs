using UnityEngine;

public class Player : Character
{
    public override void Init(CharacterID id)
    {
        base.Init(id);

        InitInventory(Managers.Data.Character[id]);
    }

    protected void InitInventory(CharacterData data)
    {

    }
}