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

        CharacterID id = Managers.Stage.players[playerIndex].characterId;
        CharacterData data = Managers.Data.Character[id];

        SetNameText(data);
        SetRenderTexture(data);

        Managers.Stage.players[playerIndex].currentHealth.BindModelEvent(UpdateHealthIndicator, this);
        Managers.Stage.players[playerIndex].level.BindModelEvent(UpdateLevelText, this);
        Managers.Stage.players[playerIndex].exp.BindModelEvent(UpdateExpIndicator, this);
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

    private void UpdateLevelText(int level)
    {
        GetText((int)Texts.LevelText).text = level.ToString();
    }

    private void UpdateExpIndicator(int exp)
    {
        float currentExp = Managers.Stage.players[playerIndex].exp.Value;
        float requireExp = Managers.Stage.players[playerIndex].requireExp.Value;

        GetImage((int)Images.ExpGaugeImage).fillAmount = currentExp / requireExp;
        GetText((int)Texts.ExpText).text = $"{currentExp} / {requireExp}".ToString();
    }
}
