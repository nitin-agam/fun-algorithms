



/*
 Title: Group Anagrams
 Level: Medium
 Link: https://leetcode.com/problems/group-anagrams/
 
 Problem: Given an array of strings strs, group the anagrams together. You can return the answer in any order.
 
 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 */

import Foundation

struct Solution {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var mapping: [String: [String]] = [:]
        
        for index in 0..<strs.count {
            mapping[String(strs[index].sorted()), default: []].append(strs[index])
        }
        
        return mapping.flatMap { mappingValue in
            mappingValue.value
        }
    }
}

let solution = Solution()
let input = ["eat","tea","tan","ate","nat","bat"]
print("Output: \(solution.groupAnagrams(input))")
