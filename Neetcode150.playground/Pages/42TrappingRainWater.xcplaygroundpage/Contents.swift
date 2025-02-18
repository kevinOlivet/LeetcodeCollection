import Foundation

/*
 ## 42. Trapping Rain Water
 https://leetcode.com/problems/trapping-rain-water/description/

 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

 Example 1:
 Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

 Example 2:
 Input: height = [4,2,0,3,2,5]
 Output: 9
 */

func trap(_ height: [Int]) -> Int {
    if height.isEmpty { return 0 }
    var l = 0
    var r = height.count - 1
    var leftMax = height[l]
    var rightMax = height[r]
    var result = 0

    while l < r {
        if leftMax < rightMax {
            l += 1
            leftMax = max(leftMax, height[l])
            result += leftMax - height[l]
        } else {
            r -= 1
            rightMax = max(rightMax, height[r])
            result += rightMax - height[r]
        }
    }
    return result
//    if height.isEmpty { return 0 }
//    var maxLeft = 0
//    var maxLeftArray = Array(repeating: 0, count: height.count)
//    var maxRight = 0
//    var maxRightArray = Array(repeating: 0, count: height.count)
//
//    for i in 0..<height.count {
//        maxLeftArray[i] = maxLeft
//        maxLeft = max(maxLeft, height[i])
//    }
//    for i in (0..<height.count).reversed() {
//        maxRightArray[i] = maxRight
//        maxRight = max(maxRight, height[i])
//    }
//    var result = Array(repeating: 0, count: height.count)
//    for i in 0..<height.count {
//        result[i] = max(min(maxLeftArray[i], maxRightArray[i]) - height[i], 0)
//    }
//
//    return result.reduce(0, +)
}

let result = trap([0,1,0,2,1,0,1,3,2,1,2,1]) // 6
print(result)

let result1 = trap([4,2,0,3,2,5]) // 9
print(result1)
