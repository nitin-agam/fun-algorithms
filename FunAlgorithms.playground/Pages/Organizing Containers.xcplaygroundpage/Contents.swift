

/*
 Problem Title: Organizing containers of balls
 
 This problem is long to explain here. So better you can read it using this link:
 https://www.hackerrank.com/challenges/organizing-containers-of-balls/problem
 */

func organizingContainers(container: [[Int]]) -> String {
    
    var isPossible = true
    
    var box: [Int] = Array(repeating: 0, count: container.count)
    var type: [Int] = Array(repeating: 0, count: container.count)
    
    for i in 0..<container.count {
        for j in 0..<container.count {
            box[i] += container[i][j]
            type[j] += container[i][j]
        }
    }
    
    box.sort()
    type.sort()
    
    for index in 0..<container.count {
        if box[index] != type[index] {
            isPossible = false
        }
    }
    
    return isPossible ? "Possible" : "Impossible"
}

let containers = [[0, 2, 1], [1, 1, 1], [2, 0, 0]]
print(organizingContainers(container: containers))
