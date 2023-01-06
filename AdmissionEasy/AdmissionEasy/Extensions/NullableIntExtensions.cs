namespace AdmissionEasy.Extensions;

public static class NullableIntExtensions
{
    public static int ConvertToInt(this int? nullableInteger)
    {
        return nullableInteger ?? 0;
    }
}