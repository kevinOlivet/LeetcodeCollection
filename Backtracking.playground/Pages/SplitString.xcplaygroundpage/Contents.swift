import Foundation
//
//// https://leetcode.com/problems/splitting-a-string-into-descending-consecutive-values/description/
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
