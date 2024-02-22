using System;


namespace Util.Pool
{
    public class PooledObject<T> : IDisposable where T : class 
    {
        private readonly T _instance;
        private readonly IObjectPool<T> _pool;
        internal PooledObject(T value, IObjectPool<T> pool)
        {
            _instance = value;
            _pool = pool;
        }

        public void Dispose()
        {
            _pool.Release(_instance);
        }
    }

}
