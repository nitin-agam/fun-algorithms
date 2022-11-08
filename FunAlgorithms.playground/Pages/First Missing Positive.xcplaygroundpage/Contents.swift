

/*
 Title: First Missing Positive
 Level: Hard
 Link: https://leetcode.com/problems/first-missing-positive/
 */

import Foundation

class Solution {
    
    func firstMissingPositive(_ nums: [Int]) -> Int {
        
        var hasOne = false
        var inputArray = nums
        
        // mark elements which are out of range and checking one is present or not in input array
        for index in 0..<inputArray.count {
            if inputArray[index] == 1 {
                hasOne = true
            }
            
            if inputArray[index] < 1 || inputArray[index] > nums.count {
                inputArray[index] = 1
            }
        }
        
        // return 1 if input array does not contain one
        if hasOne == false {
            return 1
        }
        
        // mapping elements with index
        for index in 0..<inputArray.count {
            let innerIndex = abs(inputArray[index])
            inputArray[innerIndex - 1] = -abs(inputArray[innerIndex - 1])
        }
        
        // find out missing positive integer
        for index in 0..<inputArray.count {
            if inputArray[index] > 0 {
                // if element is positive, index + 1 is missng integer
                return index + 1
            }
        }
        
        // else next number after array length is the missing integer
        return inputArray.count + 1
    }
}

let input = [1,2,0]
let solution = Solution()
print("Output: \(solution.firstMissingPositive(input))")



