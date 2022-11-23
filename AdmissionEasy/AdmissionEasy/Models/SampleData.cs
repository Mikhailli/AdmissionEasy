namespace AdmissionEasy.Models
{
    public static class SampleData
    {
        public static void Initialize(ApplicationContext context)
        {
            if (!context.Universities.Any())
            {
                context.Universities.AddRange(
                    new List<University>()
                    {
                        new University {Title = "СФУ"}
                    }
                );
                context.SaveChanges();
            }
        }
    }
}
