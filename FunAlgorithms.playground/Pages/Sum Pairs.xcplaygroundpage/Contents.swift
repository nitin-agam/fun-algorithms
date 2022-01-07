
func findSumPairs(in array: [Int], targetSum: Int) -> Int {
    var numberOfPairs = 0
    for index in 0..<array.count {
        for innerIndex in (index + 1)..<array.count {
            if (array[index] + array[innerIndex]) == targetSum {
                numberOfPairs += 1
            }
        }
    }
    return numberOfPairs
}

let array = [7, 2, 3]
//print(findSumPairs(in: array, targetSum: 5))


let name = "nitin"
print(name.reversed() == name)

func miniMaxSum(arr: [Int]) -> Void {
    let miniSum = arr.sorted().prefix(4).reduce(0, +)
    let maxSum = arr.sorted { $0 < $1 }.suffix(4).reduce(0, +)
    print(miniSum, maxSum)
}
miniMaxSum(arr: array)




