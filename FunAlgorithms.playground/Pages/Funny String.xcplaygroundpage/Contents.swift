
/*
 Title: Funny String
 Level: Easy
 Link: https://www.hackerrank.com/challenges/funny-string/problem
 */

import Foundation

class Solution {
    
    func funnyString(s: String) -> String {

        let charArray = Array(s)
        var index = 0
        var leftResult = ""
        var rightResult = ""
        
        while index < charArray.count - 1 {
            
            // getting difference from left side
            let firstValue = charArray[index].asciiValue ?? 0
            let secondValue = charArray[index + 1].asciiValue ?? 0
            let difference = abs(Int32(firstValue) - Int32(secondValue))
            
            // getting difference from right side
            let lastValue = charArray[charArray.count - 1 - index].asciiValue ?? 0
            let secondLastValue = charArray[charArray.count - 2 - index].asciiValue ?? 0
            let differenceLast = abs(Int32(lastValue) - Int32(secondLastValue))
            
            // saving difference
            leftResult += "\(difference)"
            rightResult += "\(differenceLast)"
            
            index += 1
        }
        
        // comparing results
        return leftResult == rightResult ? "Funny" : "Not Funny"
    }
}

let solution = Solution()
let input = "bcxz"
let output = solution.funnyString(s: input)
print("Output: \(output)")

