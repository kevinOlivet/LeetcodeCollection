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

 Constraints:
 1 <= nums.length <= 105
 -104 <= nums[i] <= 104
 k is in the range [1, the number of unique elements in the array].
 It is guaranteed that the answer is unique.

 Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 */

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//    let mapped = nums.map( { ($0, 1)} )
//    let countDict = Dictionary(mapped, uniquingKeysWith: +)

    var countDict = [Int: Int]()
    for num in nums {
        countDict[num, default: 0] += 1
    }

    var result = [Int]()
    let sortedCountDict = countDict.sorted(by: { $0.1 > $1.1} )
    for i in 0..<k {
        result.append(sortedCountDict[i].key)
    }
    return result
}

let result = topKFrequent([1,1,1,2,2,3], 2) // [1, 2]
print(result)

let result1 = topKFrequent([1], 1) // [1]
print(result1)

let resultPossibleFail = topKFrequent([-1, -1], 1) // [1]
print(resultPossibleFail)

// Neetcode solution
func topKFrequent1(_ nums: [Int], _ k: Int) -> [Int] {

    var countDict = [Int: Int]()
    var freq = Array(repeating: [Int](), count: nums.count + 1)

    for n in nums {
        countDict[n, default: 0] += 1
    }

    for (key, value) in countDict {
        freq[value].append(key)
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
}

let result2 = topKFrequent1([1,1,1,2,2,3], 2) // [1, 2]
print(result2)

let result3 = topKFrequent1([1], 1) // [1]
print(result3)

let resultPossibleFail1 = topKFrequent1([-1, -1], 1) // [1]
print(resultPossibleFail1)
