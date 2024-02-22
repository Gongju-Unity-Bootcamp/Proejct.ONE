using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Util.Pool
{

    public class ObjectPool<T> : IObjectPool<T>, IDisposable where T : class
    {
        private readonly Stack<T> _pool;

        private readonly Func<T> _createFunc;

        private readonly Action<T> _actionOnGet;
        private readonly Action<T> _actionOnRelease;
        private readonly Action<T> _actionOnDestroy;

        private readonly int _maxSize;

        public int CountAll { get; private set; }
        public int CountInactive => _pool.Count;
        public int CountActive => CountAll - CountInactive;

        private ObjectPool(Func<T> createFunc,
            Action<T> actionOnGet = null,
            Action<T> actionOnRelease = null,
            Action<T> actionOnDestroy = null,
            int defaultCapacity = 10,
            int maxSize = 10000)
        {
            if(createFunc == null)
            {
                throw new ArgumentNullException("createFunc");
            }
            if(maxSize <= 0)
            {
                throw new ArgumentException("Max size must be greaeter than 0");
            }

            _pool = new Stack<T>(defaultCapacity);
            _createFunc = createFunc;
            _actionOnGet = actionOnGet;
            _actionOnRelease = actionOnRelease;
            _actionOnDestroy = actionOnDestroy;
            _maxSize = maxSize;
        }

        public T Get()
        {
            T instance;
            if(CountInactive > 0)
            {
                instance = _pool.Pop();
            }
            else
            {
                instance = _createFunc();
                CountAll += 1;
            }
            _actionOnGet?.Invoke(instance);

            return instance;
        }

        public PooledObject<T> Get(out T value)
        {
            return new PooledObject<T>(value = Get(), this);
        }
        public void Release(T element)
        {
            _actionOnRelease?.Invoke(element);

            if(CountInactive < _maxSize)
            {
                _pool.Push(element);
            }
            else
            {
                _actionOnDestroy?.Invoke(element);
            }
        }

        public void Clear()
        {
            if(_actionOnDestroy != null)
            {
                foreach(T item in _pool)
                {
                    _actionOnDestroy(item);
                }
            }
            _pool.Clear();
            CountAll = 0;
        }

        public void Dispose()
        {
            Clear();
        }
    }

}
