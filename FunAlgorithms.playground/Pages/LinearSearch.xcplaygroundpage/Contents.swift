
import Foundation

// Algorithm #002: Linear Search
// Task: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

let numbers = [1, 3, 5, 6, 7, 9, 23, 45, 67, 76, 90]

func performLinearSearch(searchValue: Int, array: [Int]) -> Bool {
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}
print("Search status -> \(performLinearSearch(searchValue: 45, array: numbers))")
