

/*
 Title: Letter Combinations of a Phone Number
 Link: https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 */

// INCOMPLETE

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    
    let digitMap = ["2": ["a", "b", "c"], "3": ["d", "e", "f"], "4": ["g", "h", "i"], "5": ["j", "k", "l"], "6": ["m", "n", "o"], "7": ["p", "q", "r", "s"], "8": ["t", "u", "v"], "9": ["w", "x", "y", "z"]]
    let charArray = Array(digits)
    
    switch charArray.count {
    case 0: return result
        
    case 1: return digitMap[String(charArray.first!)] ?? []
        
    default:
        var result: [String] = []
        for i in 0..<charArray.count {
            
            if let chars = digitMap[String(charArray[i])] {
                
                if i + 1 < charArray.count {
                    if let nextChars = digitMap[String(charArray[i + 1])] {
                        for j in 0..<chars.count {
                            for k in 0..<nextChars.count {
                                result.append("\(chars[j])\(nextChars[k])")
                            }
                        }
                    }
                }
            }
        }
        
        
        return result
    }
}


let result = letterCombinations("234")
print("Output: \(result)")
