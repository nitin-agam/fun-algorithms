
/*
 Title: Find and Replace Pattern
 Level: Medium
 Link: https://leetcode.com/problems/find-and-replace-pattern/
 */


// Solution: Runtime -> 12 ms, Memory -> 14.4 mb
func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
    var result: [String] = []
    for word in words {
        if isMatching(word, pattern) {
            result.append(word)
        }
    }
    return result
}

func isMatching(_ word: String, _ pattern: String) -> Bool {

    var wordMapping: [Character: Character] = [:]
    var patternMapping: [Character: Character] = [:]
    
    /*
     Here, using zip() function to merge two sequence into single.
     Example:
     let words = "abc"
     let pattern = "abb"
      
     for (charW, charP) in zip(word, pattern) {
        print("charW: \(charW), charP: \(charP)")
     }
     
     Output:
     // charW: a, charP: a
     // charW: b, charP: b
     // charW: c, charP: b
     */
    
    for (charW, charP) in zip(word, pattern) {
        
        print("charW: \(charW), charP: \(charP)")
        
        if wordMapping[charW] == nil {
            wordMapping[charW] = charP
        }
        
        if patternMapping[charP] == nil {
            patternMapping[charP] = charW
        }
        
        if wordMapping[charW] != charP || patternMapping[charP] != charW {
            return false
        }
    }

    return true
}

let words = ["abc"] // "deq","mee","aqq","dkd","ccc"
let pattern = "abb"
let output = findAndReplacePattern(words, pattern)
print("Output: \(output)")
