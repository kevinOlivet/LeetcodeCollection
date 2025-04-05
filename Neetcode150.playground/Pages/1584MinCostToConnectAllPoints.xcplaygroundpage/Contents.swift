import Foundation

/*
 ## 1584. Min Cost to Connect All Points
 https://leetcode.com/problems/min-cost-to-connect-all-points/description/
 NOTE: Uses a modified Prim's algorithm
 MST = Minimum Spanning Tree

 You are given an array points representing integer coordinates of some points on a 2D-plane, where points[i] = [xi, yi].

 The cost of connecting two points [xi, yi] and [xj, yj] is the manhattan distance between them: |xi - xj| + |yi - yj|, where |val| denotes the absolute value of val.

 Return the minimum cost to make all points connected. All points are connected if there is exactly one simple path between any two points.

 Example 1:
 Input: points = [[0,0],[2,2],[3,10],[5,2],[7,0]]
 Output: 20
 Explanation:
 We can connect the points as shown above to get the minimum cost of 20.
 Notice that there is a unique path between every pair of points.

 Example 2:
 Input: points = [[3,12],[-2,5],[-4,1]]
 Output: 18
 */

func minCostConnectPoints(_ points: [[Int]]) -> Int {
    var points = points
    var result = 0
    var dist = Array(repeating: Int.max, count: points.count)

    // MST will always have one less edge than point
    for i in 0..<points.count - 1 {
        for j in i + 1..<points.count {
            // Manhattan distance = abs|xi - xj| + abs|yi - yj|
            // Not Euclidian distance ie a^2 + b^2 = c^2
            let xi = points[i][0], xj =  points[j][0]
            let yi = points[i][1], yj = points[j][1]
            let newDist = abs(xi - xj) + abs(yi - yj)
            dist[j] = min(dist[j], newDist)
            // So the next point added is the smallest distance.
            if dist[j] < dist[i + 1] {
                points.swapAt(j, i + 1)
                dist.swapAt(j, i + 1)
            }
        }
        result += dist[i + 1]
    }
    return result
}

var result = minCostConnectPoints([[0,0],[2,2],[3,10],[5,2],[7,0]]) // 20
print(result)

var result1 = minCostConnectPoints([[3,12],[-2,5],[-4,1]]) // 18
print(result1)
