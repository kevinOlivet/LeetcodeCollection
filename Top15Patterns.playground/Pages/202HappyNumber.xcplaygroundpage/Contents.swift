import Foundation

/*
 ## 202. Happy Number
 https://leetcode.com/problems/happy-number/description/

 Write an algorithm to determine if a number n is happy.

 A happy number is a number defined by the following process:

 Starting with any positive integer, replace the number by the sum of the squares of its digits.
 Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 Those numbers for which this process ends in 1 are happy.
 Return true if n is a happy number, and false if not.

 Example 1:
 Input: n = 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1

 Example 2:
 Input: n = 2
 Output: false
 */

func isHappy(_ n: Int) -> Bool {
    var visited = Set<Int>()
    var n = n
    while !visited.contains(n) {
        visited.insert(n)
        n = sumOfSquares(n)
        if n == 1 {
            return true
        }
    }
    return false
}

func sumOfSquares(_ n: Int) -> Int {
    var output = 0
    var n = n

    while n != 0 {
        var digit = n % 10
        digit *= digit
        output += digit
        n /= 10
    }
    return output
}

let result = isHappy(19) // true
print(result)

let result1 = isHappy(2) // false
print(result1)

// Using fast and slow pointers and Floyd's algorithm
func isHappy1(_ n: Int) -> Bool {

       var tortoise = n
       var hare = sumOfSquares(n)

       while hare != 1 && hare != tortoise {
           tortoise = sumOfSquares(tortoise)
           hare = sumOfSquares(sumOfSquares(hare))
       }

       return hare == 1
   }

let result3 = isHappy1(19) // true
print(result3)

let result4 = isHappy1(2) // false
print(result4)
