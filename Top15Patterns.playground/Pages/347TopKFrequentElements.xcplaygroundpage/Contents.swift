import Foundation

/*
 ## 347. Top K Frequent Elements
 https://leetcode.com/problems/top-k-frequent-elements/description/

 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]
 */

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var countDict = [Int: Int]()
    var freq = Array(repeating: [Int](), count: nums.count + 1) // add one since array is 0 based

    for n in nums {
        countDict[n, default: 0] += 1
    }

    for (n, c) in countDict {
        freq[c].append(n)
    }

    var result = [Int]()
    for i in (0..<freq.count).reversed() {
        for n in freq[i] {
            result.append(n)
            if result.count == k {
                return result
            }
        }
    }
    return result

    // Works too
//    var countDict = [Int: Int]()
//    for n in nums {
//        countDict[n, default: 0] += 1
//    }
//
//    let sortedDict = countDict.sorted { $0.1 > $1.1 }
//    
//    var result = [Int]()
//    for (i, v) in sortedDict {
//        result.append(i)
//        if result.count == k {
//            return result
//        }
//    }
//    return result
}

let result = topKFrequent([1,1,1,2,2,3], 2) // [1, 2]
print(result)

let result1 = topKFrequent([1], 1) // [1]
print(result1)
