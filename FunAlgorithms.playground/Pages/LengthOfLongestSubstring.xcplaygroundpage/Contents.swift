


/*
 Title: Longest Substring Without Repeating Characters
 Level: Medium
 Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
 
 Problem: Given a string s, find the length of the longest substring without repeating characters.
 
 Example:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 */

import Foundation

class Solution {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let charArray = Array(s)
        var mapping: [Character: Int] = [:]
        var maxLength = 0
        var lastRepeatPosition = -1
        var currentIndex = 0
        
        for char in charArray {
            
            if let storedIndex = mapping[char], storedIndex > lastRepeatPosition {
                lastRepeatPosition = storedIndex
            }
            
            maxLength = max(currentIndex - lastRepeatPosition, maxLength)
            mapping[char] = currentIndex
            currentIndex += 1
        }
        
        
        return maxLength
    }
}

let solution = Solution()
print("Output: \(solution.lengthOfLongestSubstring("abcabcbb"))")
