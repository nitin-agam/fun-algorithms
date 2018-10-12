
import Foundation

// Algorithm #001: FizzBuzz
// Task: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

let numbers = Array(1...100)

// Normal Approach
for number in numbers {
    if number % 15 == 0 {
        print("\(number) FizzBuzz")
    } else if number % 3 == 0 {
        print("\(number) Fizz")
    } else if number % 5 == 0 {
        print("\(number) Buzz")
    } else {
        print(number)
    }
}

// Better Approach
print("Second method result start here.....")
for number in numbers {
    var targetString = ""
    if number % 3 == 0 {
        targetString.append("Fizz")
    }
    if number % 5 == 0 {
        targetString.append("Buzz")
    }
    print("\(number) \(targetString)")
}

