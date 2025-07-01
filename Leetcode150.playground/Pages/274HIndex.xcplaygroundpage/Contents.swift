import Foundation

/*
 ## 274. H-Index
 https://leetcode.com/problems/h-index/description/

 Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper, return the researcher's h-index.

 According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.

 Example 1:
 Input: citations = [3,0,6,1,5]
 Output: 3
 Explanation: [3,0,6,1,5] means the researcher has 5 papers in total and each of them had received 3, 0, 6, 1, 5 citations respectively.
 Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.

 Example 2:
 Input: citations = [1,3,1]
 Output: 1
 */

// Sort has higher time complexity
//func hIndex(_ citations: [Int]) -> Int {
//    let citations = citations.sorted()
//    for (i, v) in citations.enumerated() {
//        if citations.count - i <= v {
//            return citations.count - i
//        }
//    }
//    return 0
//}

// Dp dosen't have sort time complexity
func hIndex(_ citations: [Int]) -> Int {

    var dp = Array(repeating: 0,
                   count: citations.count + 1)
    for c in citations {
        if c > citations.count {
            dp[citations.count] += 1
        } else {
            dp[c] += 1
        }
    }
    var result = 0
    for i in (0..<dp.count).reversed() {
        result += dp[i]
        if result >= i {
            return i
        }
    }
    return 0
}


let result = hIndex([3,0,6,1,5]) // 3
print(result)

let result1 = hIndex([1,3,1]) // 1
print(result1)
