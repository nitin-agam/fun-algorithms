
/*
 Title: String to Integer (atoi)
 Link: https://leetcode.com/problems/string-to-integer-atoi/
 */

import Foundation

func myAtoi(_ s: String) -> Int {
    
    let charArray = Array(s)
    var result = 0
    var sign = 0

    if charArray.count == 0 { return result }
    
    for index in 0..<charArray.count {
        
        let string = charArray[index]
        
        if string == " " {
            continue
        }
        
        if string == "-" {
            if sign == 1 {
                return 0
            }
            
            sign = -1
            continue
        }
        
        if string == "+" {
            
            if sign == -1 {
                return 0
            }
            
            sign = 1
            continue
        }
        
        if let digit = string.wholeNumberValue {
            if (sign * result) < Int32.min {
                return Int(Int32.min)
            } else if (sign * result) > Int32.max {
                return Int(Int32.max)
            } else {
                result = (result * 10) + digit
            }
        } else if result == 0 || string == "." {
            break
        }
    }

    return (sign == 0 ? 1 : sign) * result
}

let result = myAtoi("   -42")
print("Result:", result)
