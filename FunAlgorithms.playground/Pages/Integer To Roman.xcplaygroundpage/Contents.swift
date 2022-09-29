
/*
 Problem Title: Integer to Roman
 https://leetcode.com/problems/integer-to-roman/
 */

func intToRoman(_ num: Int) -> String {
        
    // 1: Setup for roman with their values for mapping.
    let roman: [[String: Int]] = [["I": 1], ["IV": 4], ["V": 5], ["IX": 9], ["X": 10], ["XL": 40], ["L": 50], ["XC": 90], ["C": 100], ["CD": 400], ["D": 500], ["CM": 900], ["M": 1000]]
    var result = ""
    var number = num
    
    for romanDictionary in roman.reversed() {
        
        // 2: Get key and value safely
        guard let key = romanDictionary.keys.first,
                let value = romanDictionary.values.first else {
            return result
        }
        
        // 3: If number is divisible
        if number / value > 0 {
            let count = number / value
            result += String(repeating: key, count: count)
            number = number % value
            
        }
    }
    
    return result
}

let result = intToRoman(58)
print(result)
