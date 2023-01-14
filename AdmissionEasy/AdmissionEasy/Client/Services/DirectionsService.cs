using AdmissionEasy.Models;
using AdmissionEasy.Models.ApiRequestModels;
using AdmissionEasy.Models.ApiResponseModels;

namespace AdmissionEasy.Client.Services;

public class DirectionsService
{
    private readonly HttpClient _httpClient;
    
    public DirectionsService(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }
    
    public async Task<SelectedData<DirectionsToDisplay>> GetDirectionsAsync(
        DirectionsSelectParameters? parameters = null)
    {
        var requestUrl = Api.Directions.GetDirections("https://localhost:7109", parameters);

        var response = await _httpClient.GetAsync(requestUrl);

        var selectedDirections = await response.Content.ReadAsAsync<SelectedData<DirectionsToDisplay>>();
        
        return selectedDirections;
    }
}