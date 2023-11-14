import Foundation

/*
 1849. Splitting a String Into Descending Consecutive Values
 https://leetcode.com/problems/splitting-a-string-into-descending-consecutive-values/description/

 You are given a string s that consists of only digits.

 Check if we can split s into two or more non-empty substrings such that the numerical values of the substrings are in descending order and the difference between numerical values of every two adjacent substrings is equal to 1.

 For example, the string s = "0090089" can be split into ["0090", "089"] with numerical values [90,89]. The values are in descending order and adjacent values differ by 1, so this way is valid.
 Another example, the string s = "001" can be split into ["0", "01"], ["00", "1"], or ["0", "0", "1"]. However all the ways are invalid because they have numerical values [0,1], [0,1], and [0,0,1] respectively, all of which are not in descending order.
 Return true if it is possible to split s​​​​​​ as described above, or false otherwise.

 A substring is a contiguous sequence of characters in a string.

 Example 1:
 Input: s = "1234"
 Output: false
 Explanation: There is no valid way to split s.

 Example 2:
 Input: s = "050043"
 Output: true
 Explanation: s can be split into ["05", "004", "3"] with numerical values [5,4,3].
 The values are in descending order with adjacent values differing by 1.

 Example 3:
 Input: s = "9080701"
 Output: false
 Explanation: There is no valid way to split s.
 */

//
////
//
//func splitString(_ s: String) -> Bool {
//    let arrayS = Array(s)
//
//    func backtrack(index: Int, prev: Int) -> Bool {
//        if index == s.count {
//            return true
//        }
//        for j in index..<s.count {
//            guard let val = Int(String(arrayS[index...j])) else { break }
//            if val + 1 == prev && backtrack(index: j + 1, prev: val) {
//                return true
//            }
//        }
//        return false
//    }
//
//    // Can't go to the last character because need to split it into at least 2
//    for i in 0..<s.count - 1 {
//        guard let val = Int(String(arrayS[0...i])) else { break }
//        if backtrack(index: i + 1, prev: val) {
//            return true
//        }
//    }
//    return false
//}
//
//
//let result = splitString("1234") // false
//print(result)
//
//let result1 = splitString("4321") // true
//print(result1)
//
//let fail = splitString("94650723337775781477") // false
//print(fail)
//
//let fail1 = splitString("19979817075396416247") // false
//print(fail1)



func solution(sequence: [Int]) -> Bool {
    var previous: Int = sequence[0]
    var used: Bool = false

    for i in 1..<sequence.count{
        if previous >= sequence[i] {
            if used { return false }
            used = true
            if i == 1 || sequence[i] > sequence[i - 2] {
                previous = sequence[i]
            }
        } else {
            previous = sequence[i]
        }
    }
    return true
}

let result = solution(sequence: [1, 2, 1, 2]) // false
print(result)

let result1 = solution(sequence: [10, 1, 2, 3, 4, 5]) // true
print(result1)

let result2 = solution(sequence: [1, 2, 3, 4, 3, 6]) // true
print(result2)
