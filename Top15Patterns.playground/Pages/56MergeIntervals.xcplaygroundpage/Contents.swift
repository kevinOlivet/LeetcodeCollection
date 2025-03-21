import Foundation

/*
 ## 56. Merge Intervals
 https://leetcode.com/problems/merge-intervals/description/

 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 Example 1:
 Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

 Example 2:
 Input: intervals = [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 */

func merge(_ intervals: [[Int]]) -> [[Int]] {
    let intervals = intervals.sorted(by: { $0[0] < $1[0] } )
    var result = [intervals[0]]

    for i in 1..<intervals.count {
        let start = intervals[i][0]
        let end = intervals[i][1]

        let lastEnd = result[result.count - 1][1]

        if lastEnd < start { // not overlapping
            result.append([start, end])
        } else {
            result[result.count - 1][1] = max(lastEnd, end) // merge, ie extend lastEnd if larger
        }
    }

    return result
}

let result = merge([[1,3],[2,6],[8,10],[15,18]]) // [[1,6],[8,10],[15,18]]
print(result)

let result1 = merge([[1,4],[4,5]]) // [[1,5]]
print(result1)
