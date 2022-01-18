
/*
 // Problem Title:
 
 Given an array of integers, find the longest subarray where the absolute difference between any two elements is less than or equal to 1.

 Example: a = [1, 1, 2, 2, 4, 4, 5, 5, 5]

 There are two subarrays meeting the criterion: [1, 1, 2, 2] and [4, 4, 5, 5, 5]. The maximum length subarray has 5 elements.
 
 Ref: https://www.hackerrank.com/challenges/picking-numbers/problem
 */

import Foundation

func pickingNumbers(a: [Int]) -> Int {
    var result = 0
    for index in 0...a.count - 1 {
        let currentNumber = a[index]
        var leftCount = 0
        var rightCount = 0
        
        for number in a {
            if number == currentNumber || number == currentNumber + 1 {
                rightCount += 1
            }
            
            if number == currentNumber || number == currentNumber - 1 {
                leftCount += 1
            }
        }
        
        result = max(result, max(rightCount, leftCount))
        leftCount = 0
        rightCount = 0
    }
    return result
}

let array = [1, 2, 2, 3, 1, 2]
print("result: ", pickingNumbers(a: array))
