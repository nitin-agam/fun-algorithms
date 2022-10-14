
/*
 Title: Rotate Array
 Level: Easy
 Link: https://leetcode.com/problems/rotate-array/
 */

import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k > 0 {
            for _ in 1...k {
                nums.insert(nums.remove(at: nums.count - 1), at: 0)
            }
        }
    }
}

let solution = Solution()
var input = [1, 2, 3, 4, 5, 6, 7]
solution.rotate(&input, 3)
print("Output: \(input)")
