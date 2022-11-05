
/*
 Title: A Very Big Sum
 Level: Easy
 Link: https://www.hackerrank.com/challenges/a-very-big-sum/problem
 */

import Foundation

class Solution {
    
    func aVeryBigSum(ar: [Int]) -> Int {
        var result = 0
        ar.forEach { number in
            result += number
        }
        return result
    }
}

let solution = Solution()
let input = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
let output = solution.aVeryBigSum(ar: input)
print("Output: \(output)")


