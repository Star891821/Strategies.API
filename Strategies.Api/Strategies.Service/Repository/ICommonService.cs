namespace Strategies.Service.Repository
{
    public interface ICommonService<T> where T : class
    {
        Task<List<T>> GetAll();
        Task<List<T>> GetAll(int id);
        Task<T> GetById(int id);
        Task<bool> InsertOrUpdate(T entity);
        Task<bool> Update(T entity1, T entity);
        Task<bool> Remove(T entity);
    }
}
