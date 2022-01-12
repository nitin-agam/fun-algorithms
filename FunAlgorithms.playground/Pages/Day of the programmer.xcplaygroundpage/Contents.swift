
/*
 // Problem Title: Day of the Programmer

 Given a year, y, find the date of the 256th day of that year according to the official Russian calendar during that year. Then print it in the format dd.mm.yyyy, where dd is the two-digit day, mm is the two-digit month, and yyyy is y.
 
 Ref: https://www.hackerrank.com/challenges/day-of-the-programmer/problem
 */


func dayOfProgrammer(year: Int) -> String {
    // In 1918, when the next day after January 31st was February 14th. This means that in 1918, February 14th was the 32nd day of the year in Russia. So adding 13 days in 13th day as it's not leap year.
    if year == 1918 { return "26.09.1918" }
    if (year <= 1917 && year % 4 == 0) || ((year > 1918) && (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))) { return "12.09.\(year)" }
    return "13.09.\(year)"
}

print("Result: ", dayOfProgrammer(year: 1800))
