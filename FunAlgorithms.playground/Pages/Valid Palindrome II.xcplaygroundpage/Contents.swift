
/*
 Title: Valid Palindrome II
 Level: Easy
 Link: https://leetcode.com/problems/valid-palindrome-ii/
 */

import Foundation

class Solution {
    
    func validPalindrome(_ s: String) -> Bool {
        
        let charArray = Array(s)
        var startIndex = 0
        var endIndex = charArray.count - 1
        
        while startIndex < endIndex {
            if charArray[startIndex] == charArray[endIndex] {
                startIndex += 1
                endIndex -= 1
            } else {
                
                // Checking for two substring.
                // 1. Checking with next index from the start index
                // 2. Checking with previous index from the end index
                return isPalindrome(word: s, start: startIndex + 1, end: endIndex) || isPalindrome(word: s, start: startIndex, end: endIndex - 1)
            }
        }
        
        return true
    }
    
    func isPalindrome(word: String, start: Int, end: Int) -> Bool {
        
        let charArray = Array(word)
        var startIndex = start
        var endIndex = end
        
        while startIndex < endIndex {
            if charArray[startIndex] == charArray[endIndex] {
                startIndex += 1
                endIndex -= 1
            } else {
                return false
            }
        }
        return true
    }
}

let solution = Solution()
let input = "abca"
let output = solution.validPalindrome(input)
print("Output: \(output)")
