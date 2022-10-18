
/*
 Title: Two Strings
 Level: Easy
 Link: https://www.hackerrank.com/challenges/two-strings/problem
 */

// Pending: Time exceed for some cases

import Foundation

class Solution {
    
    func twoStrings(s1: String, s2: String) -> String {
        for char in s1 {
            for targetChar in s2 {
                if char == targetChar {
                    return "YES"
                }
            }
        }
        return "NO"
    }
}

let solution = Solution()
let output = solution.twoStrings(s1: "and", s2: "art")
print("Output: \(output)")

