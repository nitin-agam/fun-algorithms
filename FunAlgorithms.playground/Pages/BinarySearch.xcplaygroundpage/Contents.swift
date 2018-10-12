
import Foundation

// Algorithm #003: Binary Search
// Task: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

func performBinarySearch(searchValue: Int, array: [Int]) -> (Bool, Int) {
    
    // If array does not contain any number, return imediately.
    if array.count < 0 {
        print("No data found for searching.")
        return (false, -1)
    }
    
    // If array contains single value and value is equal to search value,
    if array.count == 1 && searchValue == array.first {
        print("Numbers contain the search value at 0th index.")
        return (true, 0)
    }
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        // searchValue FOUND!!!
        if searchValue == middleValue {
            return (true, middleIndex)
        }
        
        // If searchValue less than middleValue, move from right to left
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        // If searchValue greater than middleValue, move to left to right
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return (false, -1)
}

let numbers = [1, 3, 5, 6, 7, 9, 23, 45, 67, 76, 90]
let result = performBinarySearch(searchValue: 45, array: numbers)
if result.1 > -1 {
    print("Result status -> Found at Index: \(result.1)th !!!")
} else {
    print("Result not found !!!")
}
