//: [Previous](@previous)

import Foundation

// Algorithm #005: In this series, the next value is the sum of previous two values. Also, the first two valueus are followed by 0 and 1.

func fibonacciUptoSteps(steps: Int) -> [Int] {
    
    // These are some extra cases which need to be handle while performing this task.
    if steps < 1 { return [] }
    if steps == 1 { return [0] }
    if steps == 2 { return [0, 1] }
    
    var sequance = [0, 1]
    for _ in 0 ... steps - 2 {
        let first = sequance[sequance.count - 2]
        let second = sequance.last!
        sequance.append(first + second)
    }
    return sequance
}

print("For 0 steps -> ", fibonacciUptoSteps(steps: 0))
print("For negative steps -> ", fibonacciUptoSteps(steps: -5))
print("For N steps -> ", fibonacciUptoSteps(steps: 10))


func fibonacciUsingRecursion(steps: Int, first: Int, second: Int) -> [Int] {
    if steps == 0 {
        return []
    }
    
    return [first + second] + fibonacciUsingRecursion(steps: steps - 1,
                                                      first: second,
                                                      second: first + second)
}

print("Fibonacci using recursion -> ", [0, 1] + fibonacciUsingRecursion(steps: 10, first: 0, second: 1))
