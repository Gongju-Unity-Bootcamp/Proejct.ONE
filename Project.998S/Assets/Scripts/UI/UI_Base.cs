using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UnityEngine;
using System;
using Unity.VisualScripting;

public abstract class UI_Base : MonoBehaviour
{
    protected Dictionary<Type, UnityEngine.Object[]> _objects = new Dictionary<Type, UnityEngine.Object[]>();

    public abstract void Init(); // 추상메서드
    
    // Bind<Buttons> => enum 클래스의 Buttons 정보를 넘긴다.
    // Buttons = key, AttackButton = value
    protected void Bind<T>(Type type) where T : UnityEngine.Object // T 중에 UnityEngine.Object 타입만 반환
    {
        string[] names = Enum.GetNames(type);
        UnityEngine.Object[] objects = new UnityEngine.Object[names.Length]; // enum에 정의된 변수들을 찾아 개수에 맞는 배열 생성
        _objects.Add(typeof(T), objects);//objects에 맞는 타입을 추가

        for(int i = 0; i < names.Length; i++)//배열의 길이 만큼 반복
        {
            if(typeof(T) == typeof(GameObject)) // T가 GameObject 타입이면 실행
            {
                objects[i] = Utils.FindChild(gameObject, names[i], true); // 게임 오브젝트와 이름이 맞는 것을 찾는다.
                //FindChild는 씬상의 모든 오브젝트를 찾는다. names[i]에 저장된 이름과 일치하는 오브젝트를 로드한다.
            }
            else
            {
                objects[i] = Utils.FindChild<T>(gameObject, names[i], true);
                //버튼이나 이미지처럼 컴포넌트가 없는 빈 오브젝트일 수도 있어서 나눠놓는다.
            }
        }
    }

    protected T Get<T>(int idx) where T : UnityEngine.Object
    {
        UnityEngine.Object[] objects = null;
        if (_objects.TryGetValue(typeof(T), out objects) == false)
            return null;

        return objects[idx] as T;
    }

    protected GameObject GetObject(int idx) { return Get<GameObject>(idx); }//게임 오브젝트 가져오기
    protected Text GetText(int idx) { return Get<Text>(idx); }//텍스트로 가져오기
    protected Button GetButton(int idx) { return Get<Button>(idx); }//버튼으로 가져오기
    protected Image GetImage(int idx) { return Get<Image>(idx); }//이미지로 가져오기
}
