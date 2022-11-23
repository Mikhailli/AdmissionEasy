namespace AdmissionEasy.Models;

public interface IGenericRepository<TEntity> where TEntity : BaseEntity
{
    TEntity GetById(object? id);
    IEnumerable<TEntity> GetAll();
}