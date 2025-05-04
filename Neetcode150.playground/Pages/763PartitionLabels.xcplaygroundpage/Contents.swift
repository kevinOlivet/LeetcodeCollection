import Foundation

/*
 ## 763. Partition Labels
 https://leetcode.com/problems/partition-labels/description/

 You are given a string s. We want to partition the string into as many parts as possible so that each letter appears in at most one part. For example, the string "ababcc" can be partitioned into ["abab", "cc"], but partitions such as ["aba", "bcc"] or ["ab", "ab", "cc"] are invalid.

 Note that the partition is done so that after concatenating all the parts in order, the resultant string should be s.

 Return a list of integers representing the size of these parts.

 Example 1:
 Input: s = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts.

 Example 2:
 Input: s = "eccbbbbdec"
 Output: [10]
 */

func partitionLabels(_ s: String) -> [Int] {
    var indexDict = [Character: Int]()
    for (i, c) in s.enumerated() {
        indexDict[c] = i
    }
    var result = [Int]()
    var size = 0
    var end = 0

    for (i, c) in s.enumerated() {
        size += 1
        end = max(end, indexDict[c]!)

        if i == end {
            result.append(size)
            size = 0
        }
    }
    return result
}

let result = partitionLabels("ababcbacadefegdehijhklij") // [9,7,8]
print(result)

let result1 = partitionLabels("eccbbbbdec") // [10]
print(result1)
