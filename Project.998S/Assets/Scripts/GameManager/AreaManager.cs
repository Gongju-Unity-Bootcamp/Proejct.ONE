using UnityEngine;

public class AreaManager : MonoBehaviour
{
    public readonly Vector3[] footboards = new Vector3[8]
    {
                                new Vector3(-5, 0, 0),
                new Vector3(-8.5f, 0, 2), new Vector3(-8.5f, 0, -2),

        new Vector3(5, 0, -3.5f), new Vector3(5, 0, 0), new Vector3(5, 0, 3.5f),
                new Vector3(8.5f, 0, -2), new Vector3(8.5f, 0, 2)
    };

    public void Init()
    {

    }
}
