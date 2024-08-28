import Foundation

/*
 ## 371. Sum of Two Integers
 https://leetcode.com/problems/sum-of-two-integers/description/

 Given two integers a and b, return the sum of the two integers without using the operators + and -.

 Example 1:
 Input: a = 1, b = 2
 Output: 3

 Example 2:
 Input: a = 2, b = 3
 Output: 5
 */

// Won't work for negative Int
//func getSum(_ a: Int, _ b: Int) -> Int {
//    var total = Array(repeating: true, count: a)
//    var b = Array(repeating: true, count: b)
//    total.append(contentsOf: b)
//    return total.count
//}

func getSum(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = (a & b) << 1
        a = a ^ b
        b = temp
    }
    return a

    // Cheeky one liner :)
//    return a.advanced(by: b)
}

let result = getSum(1, 2) // 3
print(result)

let result1 = getSum(2, 3) // 5
print(result1)

let result2 = getSum(-1, 1) // 0
print(result2)
