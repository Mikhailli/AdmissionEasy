#nullable enable
using System.Linq.Expressions;
using AdmissionEasy.Data.Domain.Interfaces;
using AdmissionEasy.Models;
using Microsoft.EntityFrameworkCore;

namespace AdmissionEasy.Data.Interfaces;

public class EFGenericRepository<TEntity> : IGenericRepository<TEntity> where TEntity : BaseEntity
{
    private readonly DbSet<TEntity> _dbSet;

    protected EFGenericRepository(ApplicationContext dbContext)
    {
        _dbSet = dbContext.Set<TEntity>();
    }

    protected IQueryable<TEntity> GetQueryable(Expression<Func<TEntity, bool>>? filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>>? orderBy = null,
        Expression<Func<TEntity, object>>[]? includes = null, int? skip = null,
        int? take = null)
    {
        IQueryable<TEntity> query = _dbSet;

        if (filter is not null)
        {
            query = query.Where(filter);
        }

        if (orderBy is not null)
        {
            query = orderBy(query);
        }

        if (includes is { Length: > 0 })
        {
            query = includes.Aggregate(query, (current, include) => current.Include(include));
        }

        if (skip.HasValue)
        {
            query = query.Skip(skip.Value);
        }
        
        if (take.HasValue)
        {
            query = query.Take(take.Value);
        }

        return query;
    }

    public virtual TEntity GetById(object? id)
    {
        return id is null ? null! : _dbSet.Find(id)!;
    }
    
    public virtual ValueTask<TEntity?> GetByIdAsync(object id)
    {
        return _dbSet.FindAsync(id);
    }

    public virtual IEnumerable<TEntity> GetAll()
    {
        return GetQueryable().AsEnumerable();
    }

    public IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>>? filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>>? orderBy = null,
        Expression<Func<TEntity, object>>[]? includes = null, int? skip = null,
        int? take = null)
    {
        return GetQueryable(filter, orderBy, includes, skip, take).ToList();
    }
    
    public Task<List<TEntity>> GetAsync(Expression<Func<TEntity, bool>>? filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>>? orderBy = null,
        Expression<Func<TEntity, object>>[]? includes = null, int? skip = null,
        int? take = null)
    {
        return GetQueryable(filter, orderBy, includes, skip, take).ToListAsync();
    }

    public int GetCount(Expression<Func<TEntity, bool>>? predicate = null)
    {
        return GetQueryable(predicate).Count();
    }
}