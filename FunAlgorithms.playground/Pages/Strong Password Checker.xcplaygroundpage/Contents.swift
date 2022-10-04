
/*
 Title: Strong Password Checker
 Link: https://leetcode.com/problems/strong-password-checker/
 */

// INCOMPLETE

func strongPasswordChecker(_ password: String) -> Int {
    
    var result = 0
    let charArray = Array(password)
    var hasLowercase = false
    var hasUpparcase = false
    var hasDigit = false
    
    if password.count < 6 {
        return 6 - password.count
    }
    
    for char in charArray {
        
        if hasUpparcase == false {
            if (char.asciiValue ?? 0) >= 65 && (char.asciiValue ?? 0) <= 90 {
                hasUpparcase = true
            }
        }
        
        if hasLowercase == false {
            if (char.asciiValue ?? 0) >= 97 && (char.asciiValue ?? 0) <= 122 {
                hasLowercase = true
            }
        }
        
        if hasDigit == false {
            if (char.asciiValue ?? 0) >= 48 && (char.asciiValue ?? 0) <= 57 {
                hasDigit = true
            }
        }
    }
    
    if hasUpparcase && hasLowercase && hasDigit {
        return 0
    }
    
    return 2
}

let output = strongPasswordChecker("A2CDeFG")
print("Ouput: \(output)")
