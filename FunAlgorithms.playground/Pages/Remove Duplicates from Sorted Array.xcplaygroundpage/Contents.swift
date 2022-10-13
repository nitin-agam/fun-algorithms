
/*
 Title: Remove Duplicates from Sorted Array
 Level: Easy
 Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 */

import Foundation

class Solution {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index < nums.count {
            if index > 0 && nums[index] == nums[index - 1] {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}

let solution = Solution()
var input = [0, 0, 1, 1, 1]
let output = solution.removeDuplicates(&input)
print("Output: \(output)")
