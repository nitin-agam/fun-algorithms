
/*
 Title: Keyboard Row
 Level: Easy
 Link: https://leetcode.com/problems/keyboard-row/
 */

import Foundation

class Solution {
    
    func findWords(_ words: [String]) -> [String] {
        
        var result: [String] = []
        let firstRow = "qwertyuiopQWERTYUIOP"
        let middleRow = "asdfghjklASDFGHJKL"
        let lastRow = "zxcvbnmZXCVBNM"
        var mappingDictionary: [Character: Int] = [:]
        
        // Assigning ID (1) for each character in first row for mapping.
        firstRow.forEach { char in
            mappingDictionary[char] = 1
        }
        
        // Assigning ID (2) for each character in middle row for mapping.
        middleRow.forEach { char in
            mappingDictionary[char] = 2
        }
        
        // Assigning ID (3) for each character in last row for mapping.
        lastRow.forEach { char in
            mappingDictionary[char] = 3
        }
        
        for word in words {
            var isValidRow = true
            let chars = Array(word)
            if let firstChar = chars.first { // getting first char safely
                
                // starting loop from index one (not from zero) as we are comparing each ID with first char's ID.
                for index in 1..<chars.count {
                    if mappingDictionary[chars[index]] != mappingDictionary[chars[0]] {
                        isValidRow = false
                        break
                    }
                }
            }
            
            // If all char has same ID, row is valid.
            if isValidRow {
                result.append(word)
            }
        }
        
        return result
    }
}

let solution = Solution()
let input = ["Hello", "Alaska", "Dad", "Peace"]
let output = solution.findWords(input)
print("Output: \(output)")


