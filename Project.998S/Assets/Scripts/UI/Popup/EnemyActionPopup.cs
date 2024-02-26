using System;
using System.Collections;
using System.Linq;
using UnityEngine;

public class EnemyActionPopup : UIPopup
{
    private enum Images
    {
        Slot1Image,
        Slot2Image,
        Slot3Image
    }

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));

        Enemy enemy = Managers.Stage.turnCharacter.Value.GetCharacterInGameObject<Enemy>();
        SkillData data = enemy.currentSkill.Value;
        UpdateNewFocusImage(data);
        StartCoroutine(UpdateAccuracyFocusImage(data));
    }

    private IEnumerator UpdateAccuracyFocusImage(SkillData data)
    {
        int index = 3;

        foreach (bool isSuccessSlot in Managers.Game.Player.slotAccuracyDamage.SelectMany(value => value.Keys))
        {
            --index;
            yield return new WaitForSeconds(0.1f);

            if (true == isSuccessSlot)
            {
                GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SUCCESS));
                continue;
            }

            GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.FAIL));
        }
    }

    private void UpdateNewFocusImage(SkillData data)
    {
        foreach (Images imageIndex in Enum.GetValues(typeof(Images)))
        {
            GetImage((int)imageIndex).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.BASIC));
        }
    }
}
