

/*
 Title: Partition Labels
 Level: Medium
 Link: https://leetcode.com/problems/partition-labels/
 */

import Foundation

class Solution {
    
    func partitionLabels(_ s: String) -> [Int] {
            
        var result: [Int] = []
        let charArray = Array(s)
        var mapping: [Character: Int] = [:]
        var prev = -1
        var maxValue = 0
        
        for (index, char) in charArray.enumerated() {
            mapping[char] = index
        }
        
        for (index, char) in charArray.enumerated() {
            if let value = mapping[char] {
                maxValue = max(maxValue, value)
                if index == maxValue {
                    result.append(maxValue - prev)
                    prev = maxValue
                }
            }
        }
        
        return result
    }
}

let solution = Solution()
let input = "ababcbacadefegdehijhklij"
let output = solution.partitionLabels(input)
print("Output: \(output)")

