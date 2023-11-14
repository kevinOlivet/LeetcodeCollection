import Foundation

// Works but times out
func minCut(_ s: String) -> Int {
    if s == String(s.reversed()) { return 0 }
    let arrayS = Array(s)

    var subset = [String]()

    var count = Int.max

    func backtrack(i: Int) {
        if i >= s.count {
            count = min(subset.count, count)
            return
        }

        for j in i..<s.count {
            if subset.count >= count { continue }
            let newPart = String(arrayS[i...j])
            if newPart == String(newPart.reversed()) {
                subset.append(newPart)
                backtrack(i: j + 1)
                subset.popLast()
            }
        }
    }
    backtrack(i: 0)

    return count - 1
}

//let result = minCut("aab") // 1
//print(result)

//let result1 = minCut("ababababababababababababcbabababababababababababa")  // times out
//print(result1)

let result2 = minCut("fifgbeajcacehiicccfecbfhhgfiiecdcjjffbghdidbhbdbfbfjccgbbdcjheccfbhafehieabbdfeigbiaggchaeghaijfbjhi") // times out
print(result2)

// Works but times out
//func minCut(_ s: String) -> Int {
//    let arrayS = Array(s)
//    var result = [Int]()
//    var subset = 0
//
//    func backtrack(i: Int) {
//        if i >= s.count {
//            if subset != 0 {
//                result.append(subset)
//            }
//            return
//        }
//
//        for j in i..<s.count {
//            let newPart = String(arrayS[i...j])
//            if newPart == String(newPart.reversed()) {
//                subset += 1
//                backtrack(i: j + 1)
//                subset -= 1
//            }
//        }
//    }
//    backtrack(i: 0)
//
//    return result.min()! - 1
//}
//
//let result = minCut("aab") // 1
//print(result)
//let result2 = minCut("cdd") // 1
//print(result2)
