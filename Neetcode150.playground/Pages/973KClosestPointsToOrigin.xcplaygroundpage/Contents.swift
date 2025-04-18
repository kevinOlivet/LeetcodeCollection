import Foundation

/*
 ## 973. K Closest Points to Origin
 https://leetcode.com/problems/k-closest-points-to-origin/description/

 Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

 The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

 You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).

 Example 1:
 Input: points = [[1,3],[-2,2]], k = 1
 Output: [[-2,2]]
 Explanation:
 The distance between (1, 3) and the origin is sqrt(10).
 The distance between (-2, 2) and the origin is sqrt(8).
 Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
 We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].

 Example 2:
 Input: points = [[3,3],[5,-1],[-2,4]], k = 2
 Output: [[3,3],[-2,4]]
 Explanation: The answer [[-2,4],[3,3]] would also be accepted.
 */

func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
    var result = [(d: Int, x: Int, y: Int)]()
    for i in 0..<points.count {
        let x = points[i][0]
        let y = points[i][1]
        let distance = (x * x) + (y * y)
        result.append((distance, x, y))
    }
    result.sort { $0.0 < $1.0 }
    return result[0..<k].map { [$0.1, $0.2] }
}

let result = kClosest([[1,3],[-2,2]], 1) // [[-2,2]]
print(result)

let result1 = kClosest([[3,3],[5,-1],[-2,4]], 2) // [[3,3],[-2,4]]
print(result1)

let result2 = kClosest([[-95,76],[17,7],[-55,-58],[53,20],[-69,-8],[-57,87],[-2,-42],[-10,-87],[-36,-57],[97,-39],[97,49]], 5)
// [[17,7],[-2,-42],[53,20],[-36,-57],[-69,-8]]
print(result2)
