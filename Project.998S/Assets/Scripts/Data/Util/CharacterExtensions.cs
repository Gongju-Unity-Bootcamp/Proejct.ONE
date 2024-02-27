using System;
using UnityEngine;
using Object = UnityEngine.Object;
using Utils;

public static class CharacterExtensions
{
    /// <summary>
    /// 게임 오브젝트에서 캐릭터 타입 오브젝트를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public static T GetCharacterInGameObject<T>(this GameObject gameObject) where T : Object
        => Utilities.GetCharacterInGameObject<T>(gameObject);

    public static T GetCharacterInGameObject<T>(this Character character) where T : Object
        => Utilities.GetCharacterInGameObject<T>(character.gameObject);

    /// <summary>
    /// 게임 오브젝트에서 캐릭터 오브젝트의 타입을 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public static Type GetCharacterTypeInGameObject<T>(this GameObject gameObject) where T : Object
        => Utilities.GetCharacterTypeInGameObject<T>(gameObject);

    public static Type GetCharacterTypeInGameObject<T>(this Character character) where T : Object
        => Utilities.GetCharacterTypeInGameObject<T>(character.gameObject);

    /// <summary>
    /// 게임 오브젝트에서 캐릭터 오브젝트의 사망 여부를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="character"></param>
    public static bool IsCharacterDead(this Character character)
        => Utilities.IsCharacterDead(character);

    public static bool IsCharacterDead(this GameObject gameObject)
        => Utilities.IsCharacterDead(gameObject.GetCharacterInGameObject<Character>());


    /// <summary>
    /// 게임 오브젝트에서 캐릭터 오브젝트의 공격 여부를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="character"></param>
    public static bool IsCharacterAttack(this Character character)
        => Utilities.IsCharacterAttack(character);

    public static bool IsCharacterAttack(this GameObject gameObject)
        => Utilities.IsCharacterAttack(gameObject.GetCharacterInGameObject<Character>());
}
