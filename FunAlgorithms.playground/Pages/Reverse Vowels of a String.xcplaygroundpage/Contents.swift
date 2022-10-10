
/*
 Title: Reverse Vowels of a String
 Level: Easy
 Link: https://leetcode.com/problems/reverse-vowels-of-a-string/
 
 Approach used to solve problem:
 1. Two pointer
 2. Swap
 3. Checking vowel
 
 We will traverse into array from left and right both the sides. Will find vowel one by one from left and right side by checking for vowel, after that swapping both the vowels into original array.
 */

import Foundation

class Solution {
    
    func reverseVowels(_ s: String) -> String {
        
        var charArray = Array(s)
        var left = 0
        var right = charArray.count - 1
    
        while left < right {

            // find vowel from left side and pin left pointer to that index
            while left < right && isVowel(charArray, left) == false {
                left += 1
            }
            
            // find vowel from right side and pin right pointer to that index
            while left < right && isVowel(charArray, right) == false {
                right -= 1
            }
            
            // swap both character in original array.
            let temp = charArray[left]
            charArray[left] = charArray[right]
            charArray[right] = temp
            
            // update indexes
            left += 1
            right -= 1
        }
        
        return String(charArray)
    }
    
    // Checking for vowel
    func isVowel(_ array: [Character], _ index: Int) -> Bool {
        let char = array[index]
        return char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "A" || char == "E" || char == "I" || char == "O" || char == "U"
    }
}

let solution = Solution()
let input = "leetcode"
let output = solution.reverseVowels(input)
print("Output: \(output)")
