#nullable enable
using System.Linq.Expressions;
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Data.Interfaces;

public interface IGenericRepository<TEntity> where TEntity : BaseEntity
{
    TEntity GetById(object? id);
    ValueTask<TEntity?> GetByIdAsync(object id);
    IEnumerable<TEntity> GetAll();
    IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>>? filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>>? orderBy = null,
        Expression<Func<TEntity, object>>[]? includes = null, int? skip = null,
        int? take = null);
    Task<List<TEntity>> GetAsync(Expression<Func<TEntity, bool>>? filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>>? orderBy = null,
        Expression<Func<TEntity, object>>[]? includes = null, int? skip = null,
        int? take = null);
    int GetCount(Expression<Func<TEntity, bool>>? predicate = null);
}