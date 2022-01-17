
/*
 // Problem Title: Electronics Shop

 A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a give budget. Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1;
 
 Ref: https://www.hackerrank.com/challenges/electronics-shop/problem
 */

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var mostExpensiveCost: Int = -1
    for k in keyboards {
        for d in drives {
            let cost = k + d
            if cost <= b && cost > mostExpensiveCost {
                mostExpensiveCost = cost
            }
        }
    }
    return mostExpensiveCost
}

let keyboards = [40, 50, 60]
let drives = [5, 8, 12]
let budget = 60
let output = getMoneySpent(keyboards: keyboards, drives: drives, b: budget)
print("output: \(output)")
