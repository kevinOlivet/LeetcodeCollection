import Foundation

/*
 ## 149. Max Points on a Line
 https://leetcode.com/problems/max-points-on-a-line/description/?envType=study-plan-v2&envId=top-interview-150

 Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane, return the maximum number of points that lie on the same straight line.

 Example 1:
 Input: points = [[1,1],[2,2],[3,3]]
 Output: 3

 Example 2:
 Input: points = [[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]
 Output: 4

 All the points are unique.
 */

func maxPoints(_ points: [[Int]]) -> Int {

    var result = 1
    for i in 0..<points.count {
        var countDict = [Double: Int]()
        for j in i+1..<points.count {
            let p1 = points[i]
            let p2 = points[j]
            var slope: Double
            if p2[0] == p1[0] {
                slope = Double.infinity
            } else {
                slope = Double(p2[1] - p1[1]) /
                        Double(p2[0] - p1[0])
            }
            countDict[slope, default: 1] += 1
            result = max(result, countDict[slope]!)
        }
    }
    return result
}

let result = maxPoints([[1,1],[2,2],[3,3]]) // 3
print(result)

let result1 = maxPoints([[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]) // 4
print(result1)
