using System.Collections.Generic;

public class PlayerHUDSubItem : UISubItem
{
    private enum RawImages
    {
        RenderRawImage
    }

    private enum Images
    {
        Focus1Image,
        Focus2Image,
        Focus3Image,
        Skill1ShowImage,
        Skill2ShowImage,
        HealthGaugeImage,
        ExpGaugeImage
    }

    private Images[] focusImages = new Images[]
    {
        Images.Focus1Image,
        Images.Focus2Image,
        Images.Focus3Image,
    };

    private Images[] skillImages = new Images[]
    {
        Images.Skill1ShowImage,
        Images.Skill2ShowImage
    };

    private enum Buttons
    {
        InventoryButton
    }

    private enum Texts
    {
        NameText,
        LevelText,
        ExpText,
        HealthText,
        LargeHealthText
    }

    private int playerIndex;

    public override void Init()
    {
        base.Init();

        BindRawImage(typeof(RawImages));
        BindImage(typeof(Images));
        BindButton(typeof(Buttons));
        BindText(typeof(Texts));

        List<UISubItem> subItems = GetComponentInParent<PlayersSubItem>().subItems;

        for (int index = 0; index < subItems.Count; ++index)
        {
            if (subItems[index] == GetComponent<PlayerHUDSubItem>())
            {
                playerIndex = index;

                break;
            }
        }

        Player player = Managers.Stage.players[playerIndex].GetCharacterInGameObject<Player>();
        CharacterID id = player.characterId.Value;
        CharacterData data = Managers.Data.Character[id];

        SetNameText(data);
        SetRenderTexture(data);

        player.currentHealth.BindModelEvent(UpdateHealthIndicator, this);
        player.currentFocus.BindModelEvent(UpdateFocusIndicator, this);
        player.level.BindModelEvent(UpdateLevelText, this);
        player.exp.BindModelEvent(UpdateExpIndicator, this);
        player.skillIds.BindModelEvent(UpdateSkillIndicator, this);
    }

    private void SetNameText(CharacterData data)
    {
        GetText((int)Texts.NameText).text = data.Name;
    }

    private void SetRenderTexture(CharacterData data)
    {
        GetRawImage((int)RawImages.RenderRawImage).texture = Managers.Resource.LoadTexture(data.Prefab);
    }

    private void UpdateHealthIndicator(int health)
    {
        float maxHealth = Managers.Stage.players[playerIndex].maxHealth.Value;

        GetImage((int)Images.HealthGaugeImage).fillAmount = health / maxHealth;
        GetText((int)Texts.HealthText).text = $"{health} / {maxHealth}".ToString();
        GetText((int)Texts.LargeHealthText).text = health.ToString();
    }

    private void UpdateFocusIndicator(int focus)
    {
        for (int index = 0; index < focusImages.Length; ++index)
        {
            if (index >= focus)
            {
                GetImage((int)focusImages[index]).gameObject.SetActive(false);

                continue;
            }
            GetImage((int)focusImages[index]).gameObject.SetActive(true);
        }
    }

    private void UpdateLevelText(int level)
    {
        GetText((int)Texts.LevelText).text = level.ToString();
    }

    private void UpdateExpIndicator(int exp)
    {
        float requireExp = Managers.Stage.players[playerIndex].requireExp.Value;

        GetImage((int)Images.ExpGaugeImage).fillAmount = exp / requireExp;
        GetText((int)Texts.ExpText).text = $"{exp} / {requireExp}".ToString();
    }

    private void UpdateSkillIndicator(int[] skills)
    {
        int skillCount = Managers.Stage.players[playerIndex].skillIds.Value.Length;

        for (int index = 0; index < skillImages.Length; ++index)
        {
            if (index < skillCount)
            {
                SkillData skilldata = Managers.Data.Skill[(SkillID)skills[index]];
                GetImage((int)skillImages[index]).sprite = Managers.Resource.LoadSprite(string.Concat(skilldata.Icon, Define.Keyword.INFO));

                continue;
            }

            GetImage((int)skillImages[index]).gameObject.SetActive(false);
        }
    }
}
