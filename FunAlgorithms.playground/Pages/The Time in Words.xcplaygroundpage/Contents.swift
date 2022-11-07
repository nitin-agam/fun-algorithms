

/*
 Title: The Time in Words
 Level: Medium
 Link: https://www.hackerrank.com/challenges/the-time-in-words/problem
 */

import Foundation

class Solution {
    
    func timeInWords(h: Int, m: Int) -> String {
        
        let timeMapping = [0: "twelve", 1: "one", 2: "two", 3: "three", 4: "four",
                           5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine",
                           10: "ten", 11: "eleven", 12: "twelve", 13: "thirteen",
                           14: "fourteen", 15: "quarter", 16: "sixteen",
                           17: "seventeen", 18: "eighteen", 19: "nineteen",
                           20: "twenty", 21: "twenty one", 22: "twenty two",
                           23: "twenty three", 24: "twenty four",
                           25: "twenty five", 26: "twenty six", 27: "twenty seven",
                           28: "twenty eight", 29: "twenty nine", 30: "half"]
        
        let hourString = timeMapping[h] ?? ""
        let minuteString = timeMapping[m] ?? ""
        
        if m == 0 {
            return hourString + " o' clock"
            
        } else if m == 15 {
            return minuteString + " past " + hourString
            
        } else if m == 30 {
            return minuteString + " past " + hourString
            
        } else if m >= 1 && m <= 30 {
            let minute = m == 1 ? " minute " : " minutes "
            return minuteString + minute + "past " + hourString
            
        } else {
            let minutesLeftToHour = 60 - m
            
            var minute = minutesLeftToHour == 1 ? " minute " : " minutes "
            if minutesLeftToHour == 15 {
                minute = " "
            }
            
            let minuteInString = timeMapping[minutesLeftToHour] ?? ""
            let hourInString = timeMapping[h + 1] ?? ""
            return minuteInString + minute + "to " + hourInString
        }
    }
}

let solution = Solution()
let output = solution.timeInWords(h: 5, m: 45)
print("Output: \(output)")

