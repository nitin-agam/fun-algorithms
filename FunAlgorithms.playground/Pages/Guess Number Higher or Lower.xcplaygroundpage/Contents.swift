


/*
 Title: Guess Number Higher or Lower
 Level: Easy
 Link: https://leetcode.com/problems/guess-number-higher-or-lower/
 
 Problem: We are playing the Guess Game. The game is as follows:
 
 I pick a number from 1 to n. You have to guess which number I picked.

 Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.

 You call a pre-defined API int guess(int num), which returns three possible results:

 -1: Your guess is higher than the number I picked (i.e. num > pick).
 1: Your guess is lower than the number I picked (i.e. num < pick).
 0: your guess is equal to the number I picked (i.e. num == pick).
 
 Return the number that I picked.
 
 Input: n = 10, pick = 6
 Output: 6
 */

import Foundation

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if num is higher than the picked number
 *                  1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution: GuessGame {
    
    func guessNumber(_ n: Int) -> Int {
        
        var start = 1
        var end = n
        
        while (start < end) {
            
            let midValue = start + (end - start) / 2
            let result = guess(midValue)
            if result == 0 {
                return midValue
            } else if result == 1 {
                start = midValue + 1
            } else if result == -1 {
                end = midValue - 1
            }
        }

        return start
    }
}

// For output, you can try this code on LeetCode platform.
