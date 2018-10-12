
import Foundation

// Algorithm #002: Linear Search

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
