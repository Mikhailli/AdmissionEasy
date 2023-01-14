using Flurl;
using AdmissionEasy.Models.ApiRequestModels;
using Microsoft.IdentityModel.Tokens;

namespace AdmissionEasy.Client.Services;

public static class Api
{
    public static class Directions
    {
        public static string GetDirections(string baseUrl, DirectionsSelectParameters? selectParameters = null)
        {
            var url = new Url($"{baseUrl}/api/Directions/get");
            if (selectParameters is not null)
            {
                url.SetQueryParam("start", selectParameters.Start);
                url.SetQueryParam("length", selectParameters.Length);
                url.SetQueryParam("searchPattern", selectParameters.SearchPattern ?? "*");
                url.SetQueryParam("orderColumnName", selectParameters.OrderColumnName);
                url.SetQueryParam("isAscending", selectParameters.IsAscending);
                if (selectParameters.InstituteFilter.IsNullOrEmpty())
                {
                    url.SetQueryParam("instituteTitle", "Все институты");
                }
                else
                {
                    url.SetQueryParam("instituteTitle", selectParameters.InstituteFilter);
                }
                if (selectParameters.SubjectFilter.IsNullOrEmpty())
                {
                    url.SetQueryParam("subjectTitle", "Все предметы");
                }
                else
                {
                    url.SetQueryParam("subjectTitle", selectParameters.SubjectFilter);
                }
            }

            return url.ToString();
        }
    }
}