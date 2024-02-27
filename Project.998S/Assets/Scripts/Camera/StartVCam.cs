using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartVCam : MonoBehaviour
{
    CinemachineVirtualCamera VCam;
    CinemachineDollyCart cart;
    StageManager stageManager;
    Vector3 lastPosition;

    private void OnEnable() => OnLookAt();


    public void OnLookAt()
    {
        VCam = GetComponent<CinemachineVirtualCamera>();
        stageManager = Managers.Stage;
        VCam.m_LookAt = stageManager.target.transform;
        cart = GetComponentInParent<CinemachineDollyCart>();
        lastPosition = cart.transform.position;

    }

    public void Update()
    {
        Vector3 currentPos = cart.transform.position;

        if (lastPosition == currentPos)
        {
            GameObject go = transform.root.gameObject;
            
            gameObject.SetActive(false);
            Managers.Stage.turnVCam = Managers.Spawn.CameraByID((PrefabID)4);
            
        }
        lastPosition = currentPos;
    }
}
