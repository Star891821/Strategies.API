using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System.Linq.Expressions;

namespace Strategies.Service.DataManager
{
    public class GenericService<T> : ICommonService<T> where T : class
    {
        protected StrategyDbContext context;
        internal DbSet<T> dbSet;

        public GenericService(StrategyDbContext context)
        {
            this.context = context;
            dbSet = context.Set<T>();
        }

        public virtual async Task<List<T>> GetAll()
        {
            return await dbSet.ToListAsync();
        }

        public virtual async Task<List<T>> GetbyUserId(int userId)
        {
            return await dbSet
                .Where(entity => entity.Equals(userId)) 
                .ToListAsync();
        }


        public virtual async Task<List<T>> GetAll(int id)
        {
            return await dbSet.Where(e => e.Equals(id)).ToListAsync();
        }

        public virtual async Task<T> GetById(int id)
        {
            return await dbSet.FindAsync(id);
        }

        public virtual async Task<bool> InsertOrUpdateRange(List<T> entity)
        {
            await dbSet.AddRangeAsync(entity);
            return true;
        }
        public virtual async Task<bool> InsertOrUpdate(T entity)
        {
            await dbSet.AddAsync(entity);
            return true;
        }

        public virtual async Task<bool> Update(T orginalentity, T entity)
        {
            dbSet.Entry(orginalentity).CurrentValues.SetValues(entity);
            return true;
        }
        public virtual async Task<IEnumerable<T>> Find(Expression<Func<T, bool>> predicate)
        {
            return await dbSet.Where(predicate).ToListAsync();
        }

        public virtual async Task<bool> Remove(T entity)
        {
            dbSet.Remove(entity);
            return true;
        }

        public virtual async Task<bool> RemoveRange(List<T> entity)
        {
            dbSet.RemoveRange(entity);
            return true;
        }
    }
}
