
import Foundation

// Algorithm #004: Common Word (Find the most common word into a given array of words.)

func findCommonWord(inArray array: [String]) -> (word: String, count: Int) {
    
    // If array is EMPTY, then return from here...
    if array.isEmpty { return (word: "", count: 0) }
    
    // If array contains only single value, then return from here....
    if array.count == 1 { return (word: array.first ?? "", count: 1) }
    
    var wordCountDictionary = [String: Int]()
    for word in array {
        wordCountDictionary[word, default: 0] += 1
    }
    
    let highestValue = wordCountDictionary.values.max()
    for (word, count) in wordCountDictionary {
        if count == highestValue {
            return (word: word, count: count)
        }
    }
    return (word: "", count: 0)
}

let wordsArray = ["Alpha", "Beta", "Gamma", "Alpha", "Alpha", "Gamma", "Alpha", "Beta", "Beta", "Beta", "Beta", "Alpha", "Alpha"]
let result = findCommonWord(inArray: wordsArray)
print("The most common word is '\(result.word)' which is found \(result.count) times.")
