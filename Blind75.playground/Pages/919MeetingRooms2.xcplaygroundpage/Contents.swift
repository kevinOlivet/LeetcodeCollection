import Foundation

/*
 ## 919 · Meeting Rooms II
 https://www.lintcode.com/problem/919/

 NOTE: This is a premium leetcode problem so I'm using lintcode instead

 Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), find the minimum number of conference rooms required.)
 (0,8),(8,10) is not conflict at 8

 Example1
 Input: intervals = [(0,30),(5,10),(15,20)]
 Output: 2
 Explanation:
 We need two meeting rooms
 room1: (0,30)
 room2: (5,10),(15,20)

 Example2
 Input: intervals = [(2,7)]
 Output: 1
 Explanation:
 Only need one meeting room
 */

class Interval {
    var start: Int
    var end: Int
    init() { start = 0; end = 0; }
    init(_ a: Int, _ b: Int) { start = a; end = b }
}

func minMeetingRooms(_ intervals: Array<Interval>) -> Int {
    let start = intervals.map({ $0.start} ).sorted()
    let end = intervals.map({ $0.end} ).sorted()

    var count = 0
    var result = 0

    var startPointer = 0
    var endPointer = 0

    while startPointer < start.count {
        if start[startPointer] < end[endPointer] {
            startPointer += 1
            count += 1
        } else {
            endPointer += 1
            count -= 1
        }
        result = max(count, result)
    }

    return result
}

let result = minMeetingRooms([Interval(0,30),Interval(5,10),Interval(15,20)]) // 2
print(result)

let result1 = minMeetingRooms([Interval(2,7)]) // 1
print(result1)
