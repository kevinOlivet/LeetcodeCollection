import Foundation

/*
 ## 743. Network Delay Time
 https://leetcode.com/problems/network-delay-time/description/
 NOTE: Doesn't use neetcode Dijkstra's Algorithm,
    Uses Bellman-Ford Algorithm

 You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of travel times as directed edges times[i] = (ui, vi, wi), where ui is the source node, vi is the target node, and wi is the time it takes for a signal to travel from source to target.

 We will send a signal from a given node k. Return the minimum time it takes for all the n nodes to receive the signal. If it is impossible for all the n nodes to receive the signal, return -1.

 Example 1:
 Input: times = [[2,1,1],[2,3,1],[3,4,1]], n = 4, k = 2
 Output: 2

 Example 2:
 Input: times = [[1,2,1]], n = 2, k = 1
 Output: 1

 Example 3:
 Input: times = [[1,2,1]], n = 2, k = 2
 Output: -1
 */

func networkDelayTime(times: [[Int]], n: Int, k: Int) -> Int {
    var travelTime = Array(repeating: Int.max, count: n + 1)
    travelTime[k] = 0

    for _ in 0..<n - 1 {
        var updated = false
        for e in times {
            let source = e[0]
            let target = e[1]
            let time = e[2]
            if travelTime[source] != Int.max &&
                travelTime[source] + time < travelTime[target] {
                    travelTime[target] = travelTime[source] + time
                    updated = true
            }
        }
        if !updated {  break }
    }

    var maxTime = 0
    for i in 1..<travelTime.count {
        maxTime = max(maxTime, travelTime[i])
    }

    return maxTime == Int.max ? -1 : maxTime
}

let result = networkDelayTime([[2,1,1],[2,3,1],[3,4,1]], 4, 2) // 2
print(result)

let result1 = networkDelayTime([[1,2,1]], 2, 1) // 1
print(result1)

let result2 = networkDelayTime([[1,2,1]], 2, 2) // -1
print(result2)
