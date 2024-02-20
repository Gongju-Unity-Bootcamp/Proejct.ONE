using UniRx;
using UniRx.Triggers;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public ReactiveProperty<GameObject> selectCharacter { get; private set; }

    public void Init()
    {
        selectCharacter = new ReactiveProperty<GameObject>();

        this.UpdateAsObservable()
            .Where(_ => Input.GetMouseButtonDown(0))
            .Select(_ => GetSelectCharacter())
            .Subscribe(selectObject =>
            {
                if (true == (selectObject != null))
                {
                    SetSelectCharacter(selectObject);
                }
            });

        selectCharacter.Subscribe(value => {

        });
    }

    private GameObject GetSelectCharacter()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit))
        {
            return hit.collider.gameObject;
        }

        return null;
    }

    private void SetSelectCharacter(GameObject character)
    {
        if (true == GameManager.Stage.isPlayerTurn.Value)
        {
            selectCharacter.Value = character;
        }
    }
}
