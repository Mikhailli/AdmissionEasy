using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;
using System.Linq.Dynamic.Core;
using System.Linq.Expressions;
using AdmissionEasy.Data.Domain.SelectionModels;
using LinqKit;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories;

public class EFDirectionsToDisplayRepository : EFGenericRepository<DirectionsToDisplay>
{
    public EFDirectionsToDisplayRepository(ApplicationContext context) : base(context) 
    {

    }

    public int GetCount(DirectionsSelectParameters parameters)
    {
        var filterExpression = BuildDirectionsExpression(parameters);

        return GetCount(filterExpression);
    }

    private Expression<Func<DirectionsToDisplay, bool>> BuildDirectionsExpression(DirectionsSelectParameters parameters)
    {
        var instituteFilter = new List<string>();

        foreach (var parameter in parameters.InstituteTitleFilter)
        {
            if (parameter.ToLower() != "все институты")
            {
                instituteFilter.Add(parameter);
            }
        }
        
        var subjectFilter = new List<string>();

        foreach (var parameter in parameters.SubjectTitleFilter)
        {
            if (parameter.ToLower() != "все предметы")
            {
                subjectFilter.Add(parameter);
            }
        }

        var searchPattern = parameters.SearchPattern != "*" ? parameters.SearchPattern : "";

        var isInstituteFilterEmpty = instituteFilter.Count == 0;
        var isSubjectFilterEmpty = subjectFilter.Count == 0;

        return PredicateBuilder.New<DirectionsToDisplay>(dir =>
                   (dir.Subjects.Contains(searchPattern) || dir.EducationAreaTitle.Contains(searchPattern)) 
                   && (isInstituteFilterEmpty || parameters.InstituteTitleFilter.Contains(dir.InstituteTitle)) 
                   && (isSubjectFilterEmpty || dir.Subjects.Contains(parameters.SubjectTitleFilter.First()))
        );
    }

    public List<DirectionsToDisplay> GetAll(DirectionsSelectParameters parameters, bool isNoTracking = false)
    {
        var filterExpression = BuildDirectionsExpression(parameters);

        var orderColumnName = string.IsNullOrEmpty(parameters.OrderParameter.Name)
            ? "PassingScoreOnBudget asc"
            : parameters.OrderParameter.OrderByToString();

        var t = GetQueryable(filterExpression,
            orderBy: q => q.OrderBy(orderColumnName),
            skip: parameters.Start,
            take: parameters.Length).ToList();
        
        return GetQueryable(filterExpression,
            orderBy: q => q.OrderBy(orderColumnName),
            skip: parameters.Start,
            take: parameters.Length).ToList();
    }
}