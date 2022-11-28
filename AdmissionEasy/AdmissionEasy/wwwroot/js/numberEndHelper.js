function getNumberEnd(num) {
    if (num % 100 == 11 || num % 100 == 12|| num % 100 == 13|| num % 100 == 14)
        return (num + " мест");
    else if (num % 10 == 1)
        return (num + " место");
    else if (num % 10 == 2 || num % 10 == 3 || num % 10 == 4)
        return (num + " места");
    else
        return (num + " мест")
}