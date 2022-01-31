
/*
 Problem Title: First and last position
 
 Given a sorted array of integers arr and an integer target. You have to find the first and last position of the target in the arr. If target can't be found in arr, return [-1. -1].
 
 Example:
 arr = [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]
 target = 5
 Output: (2, 6)
 
 Note: As we have SORTED array of integers, so we can perform linear OR binary search.
 */




/*
 METHOD I: First we will solve this problem using Linear searching. In this method, time complexity will be O(n).
 */
func firstAndLastUsingLinearSearch(arr: [Int], target: Int) -> (Int, Int) {
    
    var start = -1
    var last = -1
    
    for (index, number) in arr.enumerated() {
        if number == target {
            if start == -1 {
                start = index
            }
            last = index
        }
    }
    
    return (start, last)
}



/*
 METHOD II: Now we will solve this problem using Binary searching. In this method, time complexity will be O(logn).
 */
func firstAndLastUsingBinarySearch(arr: [Int], target: Int) -> (Int, Int) {
    
    if arr.count == 0 || arr[0] > target || arr[arr.count - 1] < target {
        return (-1, -1)
    }
    
    let start = findStart(arr: arr, target: target)
    let last = findLast(arr: arr, target: target)
    return (start, last)
}


// helper method: find out start index
func findStart(arr: [Int], target: Int) -> Int {
    
    if arr[0] == target { return 0 }
    
    var leftIndex = 0
    var rightIndex = arr.count - 1
    
    while leftIndex <= rightIndex {
        
        let midIndex = (leftIndex + rightIndex) / 2
        let midValue = arr[midIndex]
        
        if arr[midIndex] == target && arr[midIndex - 1] < target {
            return midIndex
        }
        
        if arr[midIndex] < target {
            leftIndex = midIndex + 1
        } else {
            rightIndex = midIndex - 1
        }
    }
    
    return -1
}

// helper method: find out last index
func findLast(arr: [Int], target: Int) -> Int {
    
    if arr[arr.count - 1] == target { return arr.count - 1 }
    
    var leftIndex = 0
    var rightIndex = arr.count - 1
    
    while leftIndex <= rightIndex {
        
        let midIndex = (leftIndex + rightIndex) / 2
        let midValue = arr[midIndex]
        
        if arr[midIndex] == target && arr[midIndex + 1] > target {
            return midIndex
        }
        
        if arr[midIndex] > target {
            rightIndex = midIndex - 1
        } else {
            leftIndex = midIndex + 1
        }
    }
    
    return -1
}


// inputs
let array = [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]
let target = 5


// output from linear search method
let output1 = firstAndLastUsingLinearSearch(arr: array, target: target)
print("Output using linear search - \(output1)")

// output from binary search method
let output2 = firstAndLastUsingBinarySearch(arr: array, target: target)
print("Output using binary search - \(output2)")
