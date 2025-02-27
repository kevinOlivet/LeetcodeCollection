import Foundation

/*
 ## 84. Largest Rectangle in Histogram
 https://leetcode.com/problems/largest-rectangle-in-histogram/description/

 Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.

 Example 1:
 Input: heights = [2,1,5,6,2,3]
 Output: 10
 Explanation: The above is a histogram where width of each bar is 1.
 The largest rectangle is shown in the red area, which has an area = 10 units.

 Example 2:
 Input: heights = [2,4]
 Output: 4
 */

func largestRectangleArea(_ heights: [Int]) -> Int {
    // This array will hold tuples of (index, height).
    var stack = [(index: Int, height: Int)]()
    var result = 0
    for (i, h) in heights.enumerated() {
        var start = i

        // When the current bar is lower than the previous one,
        // calculate the area that can be taken using this bar
        // and remove it afterwards.
        while let top = stack.last, top.height > h {
            start = top.index
            result = max(result, (i - top.index) * top.height)
            stack.popLast()
        }
        stack.append((start, h))
    }

    // At this point monotonic stack contains bars that only
    // increase in height. Pop them one by one and calculate
    // the area that can be created.
    while let top = stack.popLast() {
        result = max(result, (heights.count - top.index) * top.height)
    }

    return result
}

let result = largestRectangleArea([2,1,5,6,2,3]) // 10
print(result)

let result1 = largestRectangleArea([2,4]) // 4
print(result1)
