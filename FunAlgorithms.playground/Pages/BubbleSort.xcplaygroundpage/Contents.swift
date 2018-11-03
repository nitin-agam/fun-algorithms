//: [Previous](@previous)

import Foundation

// Algorithm #007: Bubble sort

func bubbleSort(numbers:inout [Int]) {
    for _ in 0...numbers.count - 1 {
        for j in 1...numbers.count - 1 {
            if numbers[j - 1] > numbers[j] {
                let largeValue = numbers[j - 1]
                numbers[j - 1] = numbers[j]
                numbers[j] = largeValue
            }
        }
    }
}

var numbers = [122, 10, 50, 32, 607, 89, 0]
bubbleSort(numbers: &numbers)
print("After Sorted: \(numbers)")

