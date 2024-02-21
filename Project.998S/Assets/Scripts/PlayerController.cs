using System;
using UniRx;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    #region Fields
    public IDisposable updateObserver { get; private set; }
    #endregion

    public void Init()
    {
        UpdateClickCharacterAsObservable();
    }

    #region Set Click Character Methods
    private void UpdateClickCharacterAsObservable()
    {
        updateObserver = Observable.EveryUpdate()
            .Where(_ => Input.GetMouseButtonDown(0))
            .Select(_ => GetSelectGameObject())
            .Subscribe(value =>
            {
                if (value == null)
                {
                    return;
                }

                //if (GetCharacterTypeInGameObject(value))
                //{
                //    Managers.Game.selectPlayerCharacter.Value = value;
                //    Managers.Game.selectEnemyCharacter.Value = null;
                //}

                //if (true == IsEnemyType(value))
                //{
                //    Managers.Game.selectEnemyCharacter.Value = value;
                //    Managers.Game.selectPlayerCharacter.Value = null;
                //}
            });
    }

    private GameObject GetSelectGameObject()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (true == Physics.Raycast(ray, out hit))
        {
            return hit.collider.gameObject;
        }

        return null;
    }
    #endregion

    #region Get Character Type Methods
    public Character GetCharacterTypeInGameObject(GameObject gameObject)
    {
        Character character = gameObject.GetComponentAssert<Character>();

        if (character.gameObject.GetType() == typeof(Player))
        {
            Player player = character.gameObject.GetComponentAssert<Player>();

            return GetCharacterTypeInGameObject(player);
        }
        
        if (character.gameObject.GetType() == typeof(Enemy))
        {
            Enemy enemy = character.gameObject.GetComponentAssert<Enemy>();

            return GetCharacterTypeInGameObject(enemy);
        }


        return character;
    }

    public Player GetCharacterTypeInGameObject(Player playerCharacter)
    {
        Player player = playerCharacter.gameObject.GetComponentAssert<Player>();

        if (player != null)
        {
            return player;
        }

        return null;
    }

    public Enemy GetCharacterTypeInGameObject(Enemy enemyCharacter)
    {
        Enemy enemy = enemyCharacter.gameObject.GetComponentAssert<Enemy>();

        if (enemy != null)
        {
            return enemy;
        }

        return null;
    }
    #endregion
}
