



/*
 Title: Find Median from Data Stream
 Level: Hard
 Link: https://leetcode.com/problems/find-median-from-data-stream/
 
 Problem: The median is the middle value in an ordered integer list. If the size of the list is even, there is no middle value, and the median is the mean of the two middle values.
 
 For example, for arr = [2,3,4], the median is 3.
 For example, for arr = [2,3], the median is (2 + 3) / 2 = 2.5.
 
 Input
 ["MedianFinder", "addNum", "addNum", "findMedian", "addNum", "findMedian"]
 [[], [1], [2], [], [3], []]
 Output
 [null, null, null, 1.5, null, 2.0]

 Explanation
 MedianFinder medianFinder = new MedianFinder();
 medianFinder.addNum(1);    // arr = [1]
 medianFinder.addNum(2);    // arr = [1, 2]
 medianFinder.findMedian(); // return 1.5 (i.e., (1 + 2) / 2)
 medianFinder.addNum(3);    // arr[1, 2, 3]
 medianFinder.findMedian(); // return 2.0
 */

import Foundation

class MedianFinder {

    var elements: [Int] = []
    
    init() { }
    
    func addNum(_ num: Int) {
        var left = 0
        var right = elements.count
        while left < right {
            let mid = left + (right - left) / 2
            if elements[mid] < num {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        elements.insert(num, at: left)
    }
    
    func findMedian() -> Double {
        if elements.count % 2 != 0 {
            return Double(elements[elements.count / 2])
        } else {
            let sum = elements[elements.count / 2] + elements[(elements.count / 2) - 1]
            return Double(sum) / 2
        }
    }
}

let obj = MedianFinder()
obj.addNum(6)
print(obj.findMedian())
obj.addNum(10)
print(obj.findMedian())
obj.addNum(2)
print(obj.findMedian())
obj.addNum(6)
print(obj.findMedian())
obj.addNum(5)
print(obj.findMedian())
obj.addNum(0)
print(obj.findMedian())
obj.addNum(6)
print(obj.findMedian())
obj.addNum(3)
print(obj.findMedian())
obj.addNum(1)
print(obj.findMedian())
obj.addNum(0)
print(obj.findMedian())
obj.addNum(0)
print(obj.findMedian())

