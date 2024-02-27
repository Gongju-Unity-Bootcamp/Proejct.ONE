using Cinemachine;
using UnityEngine;

public class TurnCamera : MonoBehaviour
{
    CinemachineVirtualCamera turnVCam;
    CinemachineDollyCart cart;
    Transform lookAtObject;

    void Start()
    {
        turnVCam = GetComponent<CinemachineVirtualCamera>();
        cart = GetComponentInParent<CinemachineDollyCart>();
        turnVCam.m_LookAt = Managers.Stage.target.transform;

    }

    private void Update()
    {
        if (turnVCam != null)
        {
            if (Managers.Stage.isPlayerTurn.Value)
            {
                cart.m_Speed = -3f;
            }
            else
            {
                //turnVCam.m_LookAt = lookAtObject;
                cart.m_Speed = 3f;
            }
        }
    }
}
