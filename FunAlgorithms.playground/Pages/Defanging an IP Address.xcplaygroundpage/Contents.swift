
/*
 Problem Title: Defanging an IP Address
 https://leetcode.com/problems/defanging-an-ip-address/
*/

import Foundation

// Solution 1: Runtime -> 3 ms & memory -> 15.2 MB
func defangIPaddr(_ address: String) -> String {
    address.replacingOccurrences(of: ".", with: "[.]")
}


// Solution 2: Runtime -> 3 ms & memory -> 15 MB
func defangIPaddr(_ address: String) -> String {
    address.components(separatedBy: ".").joined(separator: "[.]")
}


// Solution 3: Runtime -> 2 ms & memory -> 13.9 MB
func defangIPaddr(_ address: String) -> String {
    var result = ""
    address.forEach { char in
        if char == "." {
            result.append("[.]")
        } else {
            result.append(char)
        }
    }
    return result
}


let result = defangIPaddr("255.100.50.0")
print(result)
