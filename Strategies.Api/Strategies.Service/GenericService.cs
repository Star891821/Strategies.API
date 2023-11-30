using Strategies.Service.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service
{
    public class GenericService<T> : ICommonService<T> where T : class
    {
        public Task<List<T>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<T>> GetAll(int id)
        {
            throw new NotImplementedException();
        }

        public Task<T> GetById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> InsertOrUpdate(T entity)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Remove(T entity)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Update(T entity1, T entity)
        {
            throw new NotImplementedException();
        }
    }
}
