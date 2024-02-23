using System.Collections.Generic;
using System;
using Object = UnityEngine.Object;
using UnityEngine;

public static class Utils
{
    /// <summary>
    /// 제너릭으로 FindChild() 참조한 후에 값을 반환하는 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="gameObject">게임 오브젝트</param>
    /// <param name="name">이름</param>
    /// <param name="recursive">재귀 여부</param>
    public static T FindChild<T>(GameObject gameObject, string name = null, bool recursive = false) where T : Object
    {
        if (gameObject == null)
        {
            throw new InvalidOperationException($"GameObject is null.");
        }

        if (false == recursive)
        {
            for (int i = 0; i < gameObject.transform.childCount; i++)
            {
                Transform transform = gameObject.transform.GetChild(i);

                if (string.IsNullOrEmpty(name) || transform.name == name)
                {
                    T component = transform.GetComponent<T>();

                    if (component != null)
                    {
                        return component;
                    }
                }
            }
        }
        else
        {
            foreach (T component in gameObject.GetComponentsInChildren<T>())
            {
                if (false == string.IsNullOrEmpty(name) && component.name != name)
                {
                    continue;
                }

                return component;
            }
        }

        throw new InvalidOperationException($"Child {typeof(T).Name} not found.");
    }

    /// <summary>
    /// 트랜스폼 타입의 제너릭으로 FindChild() 참조한 후에 값을 반환하는 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    /// <param name="name">이름</param>
    /// <param name="recursive">재귀 여부</param>
    public static GameObject FindChild(GameObject gameObject, string name = null, bool recursive = false)
        => FindChild<Transform>(gameObject, name, recursive).gameObject;

    /// <summary>
    /// 게임 오브젝트에서 캐릭터 타입 오브젝트를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public static T GetCharacterInGameObject<T>(GameObject gameObject) where T : Object
    {
        T character;

        if (gameObject.TryGetComponent(out character))
        {
            return character;
        }

        return gameObject.GetComponent<T>();

        throw new InvalidOperationException($"GameObject is not a Character type.");
    }

    /// <summary>
    /// 게임 오브젝트에서 캐릭터 오브젝트의 타입 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public static Type GetCharacterTypeInGameObject<T>(GameObject gameObject) where T : Object
        => gameObject.GetCharacterInGameObject<T>().GetType();

    /// <summary>
    /// 게임 오브젝트에서 캐릭터 오브젝트의 사망 여부를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <param name="gameObject">게임 오브젝트</param>
    public static bool IsCharacterDead(Character character)
    {
        if (character.characterState.Value != CharacterState.Death)
        {
            return false;
        }

        return true;
    }

    /// <summary>
    /// 딕셔너리 다중 타입의 부분 요소를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T">TKey</typeparam>
    /// <typeparam name="U">TValue</typeparam>
    /// <param name="key">키</param>
    /// <param name="value">값</param>
    public static Dictionary<T, U> ReturnDictionary<T, U>(T key, U value)
        => new Dictionary<T, U>() { { key, value } };

    /// <summary>
    /// 리스트 타입의 부분 요소를 반환하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="value">값</param>
    public static List<T> ReturnList<T>(T value)
        => new List<T>() { { value } };

    /// <summary>
    /// 특정 타입의 배열 요소를 배열에 저장하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="values">값</param>
    public static T[] ReturnArray<T>(params T[] values)
        => values;

    /// <summary>
    /// 데이터 문자열 아이디 배열을 지정한 열거형 아이디 배열로 반환하기 위한 메소드입니다.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="IdEnum">문자열 IdEnum</param>
    public static T[] ReferenceDataByIdEnum<T>(string IdEnum) where T : Enum
    {
        int[] splitByComma = Array.ConvertAll(IdEnum.Split("."), int.Parse);
        T[] values = new T[splitByComma.Length];

        for (int index = 0; index < splitByComma.Length; ++index)
        {
            values[index] = (T)Enum.ToObject(typeof(T), splitByComma[index]);
        }

        return values;
    }
}
