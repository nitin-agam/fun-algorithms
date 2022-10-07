
/*
 Title: Jewels and Stones
 Level: Easy
 Link: https://leetcode.com/problems/jewels-and-stones/
 */

class Solution {
    
    // Solution 1
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        for jewel in jewels {
            for stone in stones {
                if jewel == stone {
                    result += 1
                }
            }
        }
        return result
    }
    
    // Solution 2 (Faster than solution 1)
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        var jewelSet: Set<Character> = []
        
        for jewel in jewels {
            jewelSet.insert(jewel)
        }
        
        for stone in stones {
            if jewelSet.contains(stone) {
                result += 1
            }
        }
        
        return result
    }
}

let solution = Solution()

let jewels = "aA"
let stones = "aAAbbbb"
let output = solution.numJewelsInStones(jewels, stones)
print("Output: \(output)")
