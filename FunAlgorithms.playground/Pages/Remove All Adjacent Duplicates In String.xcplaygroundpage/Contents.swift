



/*
 Title: Remove All Adjacent Duplicates In String
 Level: Easy
 Link: https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
 
 Problem: You are given a string s consisting of lowercase English letters. A duplicate removal consists of choosing two adjacent and equal letters and removing them.
 
 We repeatedly make duplicate removals on s until we no longer can.

 Return the final string after all such duplicate removals have been made. It can be proven that the answer is unique.
 
 Example:
 Input: s = "abbaca"
 Output: "ca"
 Explanation:
 For example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".
 */

import Foundation

class Solution {
    
    // Approach 1: Time exceeding for some test cases
    func removeDuplicatesApproach1(_ s: String) -> String {

        var charArray = Array(s) // converting string to array to iterate
        var index = 0

        while index < charArray.count - 1 {
            if index + 1 < charArray.count {
                if charArray[index] == charArray[index + 1] {
                    charArray.remove(at: index + 1) // removing next char first
                    charArray.remove(at: index) // removing current char now
                    index = 0 // reset index to zero to iterate from starting
                    continue
                }
            }

            index += 1
        }

        return String(charArray)
    }
    
    // Approach 2: More optimised solution
    func removeDuplicatesApproach2(_ s: String) -> String {
        var result = ""
        s.forEach {
            if let lastChar = result.last, lastChar == $0 {
                result.removeLast()
            } else {
                result.append($0)
            }
        }
        return result
    }
}

let solution = Solution()
print("Output by Approach1: \(solution.removeDuplicatesApproach1("azxxzy"))")
print("Output by Approach2: \(solution.removeDuplicatesApproach2("azxxzy"))")

