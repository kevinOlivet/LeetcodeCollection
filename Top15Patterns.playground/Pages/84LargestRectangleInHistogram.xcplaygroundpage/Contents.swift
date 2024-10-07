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
    // This array will hold tuples of (height, index).
    var monotonicStack: [(height: Int, index: Int)] = []
    var result = 0
    for (index, height) in heights.enumerated() {
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
        result = max(result, (heights.count - last.index) * last.height)
    }

    return result
}

let result = largestRectangleArea([2,1,5,6,2,3]) // 10
print(result)

let result1 = largestRectangleArea([2,4]) // 4
print(result1)
