
/*
 Title: Final Value of Variable After Performing Operations
 Link: https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
 Level: Easy
 */

import Foundation

// Solution 1: 47 ms | 13.9 mb
func finalValueAfterOperations(_ operations: [String]) -> Int {
    var result = 0
    for operation in operations {
        if operation == "++X" || operation == "X++" {
            result += 1
        } else {
            result -= 1
        }
    }
    return result
}


// Solution 2: 37 ms | 15.3 mb
func finalValueAfterOperations(_ operations: [String]) -> Int {
    let positiveCount = operations.filter({ $0.contains("+") }).count
    let negativeCount = operations.count - positiveCount
    return positiveCount + (negativeCount * (-1))
}


let output = finalValueAfterOperations(["X++","++X","--X","X--"])
print("Ouput: \(output)")
