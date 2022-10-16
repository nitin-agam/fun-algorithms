
/*
 Title: Ransom Note
 Level: Easy
 Link: https://leetcode.com/problems/ransom-note/
 */

import Foundation

class Solution {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        // creating a dictionary with count for each character.
        var magazineMapping: [Character: Int] = [:]
        for char in magazine {
            magazineMapping[char, default: 0] += 1
        }
        
        // check for ransomNote char one by one...
        for char in ransomNote {
            
            // if char is not found in magazine, simply return false as ransomNote CANNOT be constructed by using the letters from magazine.
            if let mappedCount = magazineMapping[char] {
                
                // if any count is zero, means ransomNote CANNOT be constructed fully.
                if mappedCount == 0 {
                    return false
                }
                
                // else decrease count by 1
                magazineMapping[char] = (magazineMapping[char] ?? 0) - 1
            } else {
                return false
            }
        }
        return true
    }
}

let solution = Solution()
let output = solution.canConstruct("abacda", "abcddcbaaab")
print("Output: \(output)")
