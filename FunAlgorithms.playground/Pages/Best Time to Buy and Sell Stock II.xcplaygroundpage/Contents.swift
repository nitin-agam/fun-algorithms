
/*
 Title: Best Time to Buy and Sell Stock II
 Level: Easy
 Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
 */

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for index in 1..<prices.count {
            if prices[index] > prices[index - 1] {
                profit += (prices[index] - prices[index - 1])
            }
        }
        return profit
    }
}

let solution = Solution()
var input = [7, 1, 5, 3, 6, 4]
let output = solution.maxProfit(input)
print("Output: \(output)")
