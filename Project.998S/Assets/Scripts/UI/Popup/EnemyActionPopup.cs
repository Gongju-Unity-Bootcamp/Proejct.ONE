using System.Collections;
using System.Linq;
using System;
using UnityEngine;

public class EnemyActionPopup : UIPopup
{
    private enum Images
    {
        Slot1Image,
        Slot2Image,
        Slot3Image
    }

    private Enemy enemy;
    private SkillData data;

    public override void Init()
    {
        base.Init();

        BindImage(typeof(Images));
        InitUIData();
        UpdateNewSlotIndicator();
        StartCoroutine(UpdateAccuracyFocusImage());
    }

    private void InitUIData()
    {
        enemy = Managers.Stage.turnCharacter.Value.GetCharacterInGameObject<Enemy>();
        data = enemy.currentSkill.Value;
    }

    private IEnumerator UpdateAccuracyFocusImage()
    {
        int index = -1;

        foreach (bool isSuccessSlot in Managers.Game.Enemy.slotAccuracyDamage.SelectMany(value => value.Keys))
        {
            ++index;
            yield return new WaitForSeconds(0.1f);

            Debug.Log(isSuccessSlot);
            if (true == isSuccessSlot)
            {
                GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.SUCCESS));

                continue;
            }

            GetImage(index).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.FAIL));
        }
    }

    private void UpdateNewSlotIndicator()
    {
        foreach (Images imageIndex in Enum.GetValues(typeof(Images)))
        {
            GetImage((int)imageIndex).sprite = Managers.Resource.LoadSprite(string.Concat(data.Icon, Define.Keyword.BASIC));
        }
    }
}
