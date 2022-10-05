
/*
 Title: Maximum Number of Words Found in Sentences
 Level: Easy
 Link: https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
 */

import Foundation

// Solution 1: 45 ms | 14.6 mb
func mostWordsFound(_ sentences: [String]) -> Int {
    var max = 0
    for sentence in sentences {
        var spaceCount = 0
        for char in sentence {
            if char == " " {
                spaceCount += 1
            }
        }

        if spaceCount > max {
            max = spaceCount
        }
    }
    return max + 1
}


// Solution 2: 126 ms | 15.1 mb
func mostWordsFound(_ sentences: [String]) -> Int {
    sentences.map{( $0.components(separatedBy: " ").count )}.max() ?? 0
}

let input = ["alice and bob love leetcode",
             "i think so too",
             "this is great thanks very much"]

let output = mostWordsFound(input)
print("Output: \(output)")
