
/*
 Title: Reverse Words in a String
 Level: Medium
 Link: https://leetcode.com/problems/reverse-words-in-a-string/
 */

import Foundation

class Solution {
    
    /*
     Logic used in this solution: Iterating array from end to start. Checking each character.
     1. If both current and previous chars are space then ignore to check for next logic.
     2. If current char is not space, making a word until next further space found.
     3. Once space is found and word is ready, then append it in final result.
     */
    func reverseWords(_ s: String) -> String {
        
        let charArray = Array(s)
        var result = ""
        var word = ""
        var index = charArray.count - 1
        
        // start loop from end (string length -1) to start (0)
        while index >= 0 {
            
            let currentChar = charArray[index]
            if index > 0 {
                
                // If current char and previous char are space, then ignore the next logic.
                let previousChar = charArray[index - 1]
                if currentChar == " " && previousChar == " " {
                    index -= 1
                    continue
                }
            }
            
            if currentChar != " " {
                // making word until space is not found
                word.insert(currentChar, at: word.startIndex)
            } else {
                
                // if result is not empty, then append a space before adding word into result.
                if result.isEmpty == false {
                    result.append(" ")
                }
                result.append(word)
                word = "" // clean up
            }
            index -= 1
        }
        
        // Adding last word into result if found any. In above logic, last word (in reverse form) will be added into result in case of multiple word in sentense.
        if word.isEmpty == false {
            if result.isEmpty == false {
                result.append(" ")
            }
            result.append(word)
        }
        
        return result
    }
}

let solution = Solution()

let input = "the sky is blue"
let output = solution.reverseWords(input)
print("Output: \(output)")
