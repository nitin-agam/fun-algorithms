
/*
 Problem Title: Two Sum
 https://leetcode.com/problems/two-sum/
 */


// Approach 1: This approach is straightforward. We can check for every pair in the array and if their sum is equal to the given target, print their indices. This kind of Brute Force solution needs to check every possible pair and number of possible pairs in the array = n * (n – 1) / 2. So, in the worst-case, this approach can be slow.
// Time Complexity: O(n * n)
func twoSumByBasic(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return [-1, -1]
}


// Approach 2 [GOOD]: This approach is good to solve these kind of problems. We are storing the index of number to remember which number is where.
// Time Complexity: O(n)
func twoSumByDictionary(_ nums: [Int], _ target: Int) -> [Int] {
    
    var resultDictionary: [Int: Int] = [:]
    
    for (index, number) in nums.enumerated() {
        if let lastIndex = resultDictionary[target - number] {
            return [lastIndex, index]
        }
        resultDictionary[number] = index
    }
    
    return [-1, -1]
}


print("result 1: ", twoSumByBasic([3, 2, 4], 6))
print("result 2: ", twoSumByDictionary([2, 7, 11, 15], 9))
