
/*
 Title: Fizz Buzz
 Level: Easy
 Link: https://leetcode.com/problems/fizz-buzz/
 
 In this problem, we tried to solve it with less if-else condition as this case asked in many interviews.
 Solution 1: With % operator
 Solution 2: Without % operator (Asked in interviews)
 */

import Foundation

class Solution {
    
    // Solution 1: With % operator
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        for number in 1...n {
            var targetString = ""
            if number % 3 == 0 || number % 5 == 0 {
                if number % 3 == 0 {
                    targetString.append("Fizz")
                }

                if number % 5 == 0 {
                    targetString.append("Buzz")
                }
            } else {
                targetString.append("\(number)")
            }
            result.append(targetString)
        }
        return result
    }
    
    
    // Solution 1: Without % operator
    func fizzBuzz(_ n: Int) -> [String] {
        
        var result: [String] = []
        var fizz = 0
        var buzz = 0
        
        for number in 1...n {
            var targetString = ""
            fizz += 1
            buzz += 1
            if fizz == 3 || buzz == 5 {
                if fizz == 3 {
                    targetString.append("Fizz")
                    fizz = 0
                }
                
                if buzz == 5 {
                    targetString.append("Buzz")
                    buzz = 0
                }
            } else {
                targetString.append("\(number)")
            }
            
            result.append(targetString)
        }
        return result
    }
}

let solution = Solution()
let input = 15
let output = solution.fizzBuzz(input)
print("Output: \(output)")

