using System.Linq.Expressions;
using Microsoft.EntityFrameworkCore;


namespace AdmissionEasy.Models;

public class EFGenericRepository<TEntity> : IGenericRepository<TEntity> where TEntity : BaseEntity
{
    protected readonly ApplicationContext _dbContext;
    protected readonly DbSet<TEntity> _dbSet;

    public EFGenericRepository(ApplicationContext dbContext)
    {
        _dbContext = dbContext;
        _dbSet = _dbContext.Set<TEntity>();
    }

    protected IQueryable<TEntity> GetQueryable(Expression<Func<TEntity, bool>> filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
        Expression<Func<TEntity, object>>[] includes = null, int? skip = null,
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
        if (id is null)
            return null;

        return _dbSet.Find(id);
    }

    public virtual IEnumerable<TEntity> GetAll()
    {
        return GetQueryable().AsEnumerable();
    }

    public IEnumerable<TEntity> Get(Expression<Func<TEntity, bool>> filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
        Expression<Func<TEntity, object>>[] includes = null, int? skip = null,
        int? take = null)
    {
        return GetQueryable(filter, orderBy, includes, skip, take).ToList();
    }
    
    public Task<List<TEntity>> GetAsync(Expression<Func<TEntity, bool>> filter = null,
        Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
        Expression<Func<TEntity, object>>[] includes = null, int? skip = null,
        int? take = null)
    {
        return GetQueryable(filter, orderBy, includes, skip, take).ToListAsync();
    }

    public int GetCount(Expression<Func<TEntity, bool>> predicate = null)
    {
        return GetQueryable(predicate).Count();
    }
}