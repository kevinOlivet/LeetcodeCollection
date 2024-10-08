import Foundation

/*
 ## 11. Container With Most Water
 https://leetcode.com/problems/container-with-most-water/description/

 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

 Example 1:
 Input: height = [1,8,6,2,5,4,8,3,7]
 Output: 49
 Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
 
 Example 2:
 Input: height = [1,1]
 Output: 1
 */

func maxArea(_ height: [Int]) -> Int {
//    var l = 0
//    var r = height.count - 1
//    var result = 0
//    while l < r {
//        let area = (r - l) * min(height[l], height[r])
//        result = max(result, area)
//        if height[l] <= height[r] {
//            l += 1
//        } else {
//            r -= 1
//        }
//    }
//    return result
    // This array will hold tuples of (height, index).
    var monotonicStack: [(height: Int, index: Int)] = []
    var result = 0
    for (index, height) in height.enumerated() {
        var previousIndex = index

        // When the current bar is lower than the previous one,
        // calculate the area that can be taken using this bar
        // and remove it afterwards.
        while let last = monotonicStack.last, last.height >= height {
            previousIndex = last.index
            result = max(result, (index - last.index) * last.height)
            monotonicStack.popLast()
        }
        monotonicStack.append((height, previousIndex))
    }

    // At this point monotonic stack contains bars that only
    // increase in height. Pop them one by one and calculate
    // the area that can be created.
    while let last = monotonicStack.popLast() {
        result = max(result, (height.count - last.index) * last.height)
    }

    return result
}

let result = maxArea([1,8,6,2,5,4,8,3,7]) // 49
print(result)

let result1 = maxArea([1,1]) // 1
print(result1)
