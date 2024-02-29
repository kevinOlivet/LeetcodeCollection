import Foundation

/*
 ## 920 · Meeting Rooms
 https://www.lintcode.com/problem/920/

 NOTE: This is a premium leetcode problem so I'm using lintcode instead
 Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), determine if a person could attend all meetings.

 (0,8),(8,10) is not conflict at 8

 Example1
 Input: intervals = [(0,30),(5,10),(15,20)]
 Output: false
 Explanation:
 (0,30), (5,10) and (0,30),(15,20) will conflict

 Example2
 Input: intervals = [(5,8),(9,15)]
 Output: true
 Explanation:
 Two times will not conflict
 */

// Definition of Interval:
class Interval {
    var start: Int
    var end: Int
    init() { start = 0; end = 0; }
    init(_ a: Int, _ b: Int) { start = a; end = b }
}

func canAttendMeetings(_ intervals: [Interval]) -> Bool {
    let sortedIntervals = intervals.sorted(by: { $0.start < $1.start} )
    for i in 1..<intervals.count {
        if intervals[i - 1].end > intervals[i].start {
            return false
        }
    }
    return true
}

let result = canAttendMeetings([Interval(0,30), Interval(5,10), Interval(15,20)]) // false
print(result)

let result1 = canAttendMeetings([Interval(5,8), Interval(9,15)]) // true
print(result1)
