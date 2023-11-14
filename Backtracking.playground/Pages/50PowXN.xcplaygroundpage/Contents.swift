import Foundation

// NOT BACKTRACKING BUT RECURSION

/*
 50. Pow(x, n)
 https://leetcode.com/problems/powx-n/

 Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

 Example 1:
 Input: x = 2.00000, n = 10
 Output: 1024.00000

 Example 2:
 Input: x = 2.10000, n = 3
 Output: 9.26100

 Example 3:
 Input: x = 2.00000, n = -2
 Output: 0.25000
 Explanation: 2-2 = 1/22 = 1/4 = 0.25
 */

func myPow(_ x: Double, _ n: Int) -> Double {
    // ALMOST WORKS! BUT TIMES OUT
//    func myPowPow(x: Double, n: Int, originalX: Double) -> Double {
//        if n == 0 {
//            return 1
//        } else if n == 1 {
//            return x
//        } else if n == -1 {
//            return -x
//        } else if n > 1 {
//            return myPowPow(x: x * originalX, n: n - 1, originalX: originalX)
//        } else {
//            return myPowPow(x: x * originalX, n: n + 1, originalX: originalX)
//        }
//    }
//    if n < 0 {
//        return 1/abs(myPowPow(x: x , n: n, originalX: x))
//    } else {
//        return myPowPow(x: x , n: n, originalX: x)
//    }

    func helper(x: Double, n: Int) -> Double {
        if x == 0.0 { return 0 }
        if n == 0 { return 1 }

        var result = helper(x: x, n: n/2)
        result = result * result
        if n % 2 != 0 {
            return x * result
        } else {
            return result
        }
    }

    let finalResult = helper(x: x, n: abs(n))
    if n >= 0 {
        return finalResult
    } else {
        return 1 / finalResult
    }
}

let result = myPow(2.0, 10) // 1024.00000
print(result)

let result1 = myPow(2.1, 3) // 9.26100
print(result1)

let result2 = myPow(2.0, -2) // 0.25000
print(result2)

let result3 = myPow(34.00515, -3) // 3e-05
print(result3)



