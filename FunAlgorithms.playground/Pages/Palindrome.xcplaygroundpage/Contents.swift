//: [Previous](@previous)

import Foundation

// Algorithm #006: Palindrome (A input is a palindrome if the reverse of that input is equal to the original input.)

func isPalindrome(number: Int) -> Bool {
    var reverseNumber = 0
    var storedNumber = number
    while storedNumber != 0 {
        reverseNumber = reverseNumber * 10
        reverseNumber = reverseNumber + storedNumber % 10
        storedNumber = storedNumber / 10
    }
    return reverseNumber == number
}

print("Given number is plaindrome -> ", isPalindrome(number: 121))


func isPalindrome(word: String) -> Bool {
    
    // If no string found, return false
    if word.count == 0 { return false }
    
    var index = 0
    var characters = Array(word) // make array of characters
    while index < characters.count / 2 { // repeat loop only for half length of given string
        if characters[index] != characters[(characters.count - 1) - index] {
            return false
        }
        index += 1
    }
    
    return true
}

print("Given string is plaindrome -> ", isPalindrome(word: "madam"))


func countAllPalindromes(sentence: String) -> [String: Int]? {
    
    if sentence.count == 0 { return nil }
    
    var counts = [String: Int]()
    let words = sentence.components(separatedBy: " ")
    words.forEach { (word) in
        if isPalindrome(word: word) {
            counts[word, default: 0] += 1
        }
    }
    return counts
}

if let resultDictionary = countAllPalindromes(sentence: "madam anna madam count madam apple racecar") {
    print("Result -> ", resultDictionary)
}

