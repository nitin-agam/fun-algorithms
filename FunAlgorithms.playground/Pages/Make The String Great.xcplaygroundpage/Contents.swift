
/*
 Title: Make The String Great
 Level: Easy
 Link: https://leetcode.com/problems/make-the-string-great/
 */

import Foundation

class Solution {
    
    func makeGood(_ s: String) -> String {
        
        var charArray = Array(s) // converting string to array to iterate
        var index = 0
        
        while index < charArray.count - 1 {
            if index + 1 < charArray.count {
                
                // checking abs difference of both the ascii values for chars
                if abs(Int(charArray[index].asciiValue ?? 0) - Int(charArray[index + 1].asciiValue ?? 0)) == 32 {
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
}

let input = "abBAcC"
let solution = Solution()
print("Output: \(solution.makeGood(input))")


