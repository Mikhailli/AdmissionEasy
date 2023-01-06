using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories;

public class EFDirectionsToDisplayRepository : EFGenericRepository<DirectionsToDisplay>
{
    public EFDirectionsToDisplayRepository(ApplicationContext context) : base(context) 
    {

    }
}