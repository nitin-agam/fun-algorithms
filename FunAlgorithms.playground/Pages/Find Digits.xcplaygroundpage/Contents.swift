

/*
 Title: Find Digits
 Level: Easy
 Link: https://www.hackerrank.com/challenges/find-digits/problem
 */

import Foundation

class Solution {
    
    func findDigits(n: Int) -> Int {
        
        var divisorCount = 0
        var num = n
        
        while num > 0 {
            let remainder = num % 10
            if remainder != 0 && n % remainder == 0 {
                divisorCount += 1
            }
            
            num = num / 10
        }

        return divisorCount
    }
}

let solution = Solution()
let input = 1012
let output = solution.findDigits(n: input)
print("Output: \(output)")
