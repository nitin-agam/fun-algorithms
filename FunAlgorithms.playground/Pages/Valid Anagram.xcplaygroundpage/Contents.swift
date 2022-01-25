
print("Problem Title: Valid Anagram")

/*
 Given two strings s1 and s2, check if they're anagrams.
 
 Note: Two strings are anagrams if they are made of the same characters with the same frequencies.
 
 Example: s1 = "danger" and s2 = "garden" (They both are anagrams)
 */

func validAnagrams(s1: String, s2: String) -> Bool {
    
    if s1.count != s2.count { return false }
    
    var s1Frequency: [String: Int] = [:]
    var s2Frequency: [String: Int] = [:]
    
    for char in s1 {
        s1Frequency["\(char)", default: 0] += 1
    }
    
    for char in s2 {
        s2Frequency["\(char)", default: 0] += 1
    }
    
    for key in s1Frequency.keys {
        if s2Frequency.keys.contains(key) == false || s1Frequency[key] != s2Frequency[key] {
            return false
        }
    }
    
    return true
}

let s1 = "salesmen"
let s2 = "nameless"

print(validAnagrams(s1: s1, s2: s2))
