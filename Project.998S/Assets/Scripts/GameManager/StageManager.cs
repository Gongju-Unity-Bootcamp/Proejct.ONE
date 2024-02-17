using UnityEngine;

public class StageManager : MonoBehaviour
{
    public readonly Vector3[] footboards = new Vector3[6]
    {
            new Vector3(-3, 0, -4), new Vector3(0, 0, -4), new Vector3(3, 0, -4),
            new Vector3(-3, 0, 4), new Vector3(0, 0, 4), new Vector3(3, 0, 4)
    };

    public void Init()
    {

    }
}
