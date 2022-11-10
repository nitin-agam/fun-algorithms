



/*
 Title: Circular Array Rotation
 Level: Easy
 Link: https://www.hackerrank.com/challenges/circular-array-rotation/problem
 
 Problem: John Watson knows of an operation called a right circular rotation on an array of integers. One rotation operation moves the last array element to the first position and shifts all remaining elements right one. To test Sherlock's abilities, Watson provides Sherlock with an array of integers. Sherlock is to perform the rotation operation a number of times then determine the value of the element at a given position.
 
 For each array, perform a number of right circular rotations and return the values of the elements at the given indices.
 
 Example:
 Input: a = [3, 4, 5], k = 2, queries = [1, 2]
 Output: [5, 3]
 */

import Foundation

class Solution {
    
    func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        var nums = a
        for _ in 1...k {
            nums.insert(nums.remove(at: nums.count - 1), at: 0)
        }
        
        return queries.map{ nums[$0] }
    }
}

let solution = Solution()
print("Output: \(solution.circularArrayRotation(a: [3, 4, 5], k: 2, queries: [1, 2]))")
