
/*
 Problem Title: Hurdle Race
 
 A video player plays a game in which the character competes in a hurdle race. Hurdles are of varying heights, and the characters have a maximum height they can jump. There is a magic potion they can take that will increase their maximum jump height by 1 unit for each dose. How many doses of the potion must the character take to be able to jump all of the hurdles. If the character can already clear all of the hurdles, return 0.
 
 Example:
 heights = [1,2,3,3,2]
 k = 1
 Output: 2
 
 The character can jump 1 (k) unit high initially and must take 3 - 1 = 2 doses of potion to be able to jump all of the hurdles.
 */


// using sorted() function:
func hurdleRace(k: Int, height: [Int]) -> Int {
    let sorted = height.sorted()
    if let maxHeight = sorted.last, k < maxHeight {
        return maxHeight - k
    }
    return 0
}


// using max() function:
func hurdleRace2(k: Int, height: [Int]) -> Int {
    let maxHeight = height.max() ?? 0
    if k < maxHeight {
        return maxHeight - k
    }
    return 0
}


let output = hurdleRace(k: 4, height: [1, 6, 3, 5, 2])
print(output)
