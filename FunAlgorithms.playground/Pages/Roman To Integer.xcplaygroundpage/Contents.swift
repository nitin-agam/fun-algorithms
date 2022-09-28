
/*
 Problem Title: Roman to Integer
 https://leetcode.com/problems/roman-to-integer/
 */

func romanToInt(_ s: String) -> Int {
    
    // 1: Setup a dictionary to map with roman char with their values.
    let roman: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var result: Int = 0
    
    for (index, romanChar) in s.enumerated() {
        
        // 2: Checking for current char with next char
        // 3: If current char is less than next one, result should be substract.
        // 4: Else result should be added.
        // 5: Array(s)[index + 1] [Converting string into Array of character to get next char using Subscript operator]
        if index + 1 < s.count &&
            roman[romanChar] ?? 0 < roman[Array(s)[index + 1]] ?? 0 {
            result -= roman[romanChar] ?? 0
        } else {
            result += roman[romanChar] ?? 0
        }
    }
    
    return result
}

let result = romanToInt("MCMXCIV")
print(result)
