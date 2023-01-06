namespace AdmissionEasy.Extensions;

public static class IntExtensions
{
    public static string FillWithZerosAndConvertToString(this int integer, int countOfDigits = 10)
    {
        const char zero = '0';
        
        if (integer.ToString().Length >= countOfDigits)
        {
            return integer.ToString();
        }

        var stringInteger = integer.ToString();

        while (stringInteger.Length < countOfDigits)
        {
            stringInteger = zero + stringInteger;
        }

        return stringInteger;
    }
}