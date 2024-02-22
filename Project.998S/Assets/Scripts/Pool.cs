using System.Collections;
using System.Collections.Generic;
using UniRx.Toolkit;
using UnityEngine;

namespace Util.Pool
{
    public class Pool<T> where T : Component
    {
        private GameObject _container;
        protected ObjectPool<T> _pool;
        public T Get() => _pool.Get();
        public void Release(T element) => _pool.Release(element);
        //public void Init(GameObject container)
        //{
        //    _container = container;
        //    _pool = new(Create, OnGet, OnRelease, OnDestroy);
        //}

        protected virtual T Create()
        {
            return Managers.Resource.Instantiate($"{typeof(T)}", _container.transform)
                .GetComponentAssert<T>();
        }
        protected virtual void OnGet(T element) => element.gameObject.SetActive(true);
        protected virtual void OnRelease(T element) => element.gameObject.SetActive(false);
        protected virtual void OnDestroy(T element) => Object.Destroy(element.gameObject);
    }

}
