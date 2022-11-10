



/*
 Title: Time Conversion
 Level: Easy
 Link: https://www.hackerrank.com/challenges/time-conversion/problem
 
 Problem: Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
 
 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
 
 Example:
 Input: s = 06:40:03AM
 Output: 06:40:03
 */

import Foundation

class Solution {
    
    func timeConversion(s: String) -> String {
        let hours = s.prefix(2)
        let timeZone = s.suffix(2)
        let hoursInInt = Int(hours) ?? 0
        if timeZone == "PM" {
            let hourToReplace = hoursInInt == 12 ? hoursInInt : 12 + hoursInInt
            return s.replacing(hours, with: String(hourToReplace)).replacing(timeZone, with: "")
        } else {
            let hourToReplace = hoursInInt == 12 ? "00" : hours
            return s.replacing(hours, with: hourToReplace).replacing(timeZone, with: "")
        }
    }
}

let solution = Solution()
print("Output: \(solution.timeConversion(s: "06:40:03AM"))")
