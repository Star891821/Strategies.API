using System.Linq.Expressions;

namespace Strategies.Service.Interfaces
{

    public interface ICommonService<T> where T : class
    {
        Task<List<T>> GetAll();
        Task<List<T>> GetbyUserId(int userId);
        Task<List<T>> GetAll(int id);
        Task<T> GetById(int id);
        Task<bool> InsertOrUpdateRange(List<T> entity);
        Task<bool> InsertOrUpdate(T entity);
        Task<bool> Update(T entity1, T entity);
        Task<bool> Remove(T entity);
        Task<bool> RemoveRange(List<T> entity);

        Task<IEnumerable<T>> Find(Expression<Func<T, bool>> predicate);
    }
}
