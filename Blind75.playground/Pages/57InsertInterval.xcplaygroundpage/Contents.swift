import Foundation

/*
 57. Insert Interval
 https://leetcode.com/problems/insert-interval/description/

 You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

 Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return intervals after the insertion.

 Example 1:
 Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
 Output: [[1,5],[6,9]]

 Example 2:
 Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
 Output: [[1,2],[3,10],[12,16]]
 Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
 */

func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {

    var newInterval = newInterval

    var result = [[Int]]()

    for i in 0..<intervals.count {
        if newInterval[1] < intervals[i][0] {
            // Put it at the beginning
            result.append(newInterval)
            return result + intervals[i..<intervals.count]
        } else if newInterval[0] > intervals[i][1] {
            // newInterval will go after so ad intervals[i] to the result array
            result.append(intervals[i])
        } else {
            // make a new interval because it's overlapping
            newInterval = [min(newInterval[0], intervals[i][0]), max(newInterval[1], intervals[i][1])]
        }
    }
    // newInterval comes at the end.
    result.append(newInterval)
    return result
}

let result = insert([[1,3],[6,9]], [2,5]) // [[1,5],[6,9]]
print(result)

let result1 = insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]) // [[1,2],[3,10],[12,16]]
print(result1)
