
/*
 Title: Multiply Strings
 Level: Medium
 Link: https://leetcode.com/problems/multiply-strings/
 */

import Foundation

class Solution {
    
    func multiply(_ num1: String, _ num2: String) -> String {
            
        // num1 OR num2 might be zero, no need to check anything further.
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        
        let array1 = Array(num1)
        let array2 = Array(num2)
        var secondIndex = array2.count - 1
        var powerFactor = 0 // using it to keep record of every iteration count.
        
        // creating a fixed-size array of total digits in both array.
        // Example: "128" * "756" = result will be of total digits i.e. 3 + 3 = 6
        var result: [Int] = Array(repeating: 0, count: array1.count + array2.count)
        
        // start iterating from end to start for num2
        while secondIndex >= 0 {
            let secondIndexValue = Int((array2[secondIndex].asciiValue ?? 0) - 48)
            secondIndex -= 1
            
            var firstIndex = array1.count - 1
            
            // k = total digit count in result - 1 - how many iteration has performed for num2
            var k = result.count - 1 - powerFactor // having current index while loop start again for num2
            var carry = 0
            
            
            // In some case, carry might be left to be added in result and index is out of bound for num1. Then carry should be added in result.
            while firstIndex >= 0 || carry != 0 {
                let firstIndexValue = firstIndex >= 0 ?  Int((array1[firstIndex].asciiValue ?? 0) - 48) : 0
                firstIndex -= 1
                
                // prod = value2 * value1 + carry + result[k]
                // adding carry if any
                // adding result[k], bcoz we are maintaining single array for result.
                let prod = secondIndexValue * firstIndexValue + carry + result[k]
                result[k] = Int(prod % 10)
                carry = Int(prod / 10)
                k -= 1
            }
            powerFactor += 1 // increase on each iteration over
        }
        
        // manipulating the result from array[Int] to single string.
        var output = ""
        var isNonZero = false
        for number in result {
            if number == 0 && isNonZero == false {
                continue
            } else {
                isNonZero = true
                output += "\(number)"
            }
        }
        return output
    }
}

let solution = Solution()
let output = solution.multiply("9", "9")
print("Output: \(output)")
