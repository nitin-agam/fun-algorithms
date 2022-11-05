
/*
 Title: Contains Duplicate
 Level: Easy
 Link: https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/578/
 */

import Foundation

class Solution {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
            
        // creating a dictionary to keep frequency of each number.
        var mapping: [Int: Int] = [:]
        
        // increasing frequency by 1
        for num in nums {
            mapping[num, default: 0] += 1
            
            // checking for frequency grater than 1.
            if (mapping[num] ?? 0) > 1 {
                return true
            }
        }
        return false
    }
}

let solution = Solution()
let input = [1,2,3,4]
let output = solution.containsDuplicate(input)
print("Output: \(output)")


