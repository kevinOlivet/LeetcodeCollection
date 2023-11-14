import Foundation
/*
 https://leetcode.com/problems/matchsticks-to-square/

 You are given an integer array matchsticks where matchsticks[i] is the length of the ith matchstick.
 You want to use all the matchsticks to make one square.
 You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.

 Return true if you can make this square and false otherwise.

 Example: 1

 Input: matchsticks = [1,1,2,2,2]
 Output: true
 Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.


 Example 2:

 Input: matchsticks = [3,3,3,3,4]
 Output: false
 Explanation: You cannot find a way to form a square with all the matchsticks.
 */

func makesquare(_ matchsticks: [Int]) -> Bool {
    let total = matchsticks.reduce(0, +)
    let length = total/4

    // See if it is possible to make a square
    if Double(total)/Double(4) != Double(length) { return false }

    let matchsticks = matchsticks.sorted(by: >)

    // if the greatest is longer than the length then the whole thing will not work
    if matchsticks.first! > length { return false }

    // Keep track of the sides length
    var sides = Array(repeating: 0, count: 4)

    func backtrack(i: Int) -> Bool {
        // Base case!  We made it! Wooohooo!
        if i == matchsticks.count {
            return true
        }

        // Check if it can fit on one of the sides
        for j in 0..<4 {
            if sides[j] + matchsticks[i] <= length {
                // Add to the side and keep going
                sides[j] += matchsticks[i]
                if backtrack(i: i + 1) {
                    return true
                }
                // backtrack the side
                sides[j] -= matchsticks[i]
            }
        }
        // Finised the for loop.  No joy.
        return false
    }
    return backtrack(i: 0)
}

let result = makesquare([1,1,2,2,2]) // true
print(result)

let result1 = makesquare([3,3,3,3,4]) // false
print(result1)
