import Foundation

/*
 ## 239. Sliding Window Maximum
 https://leetcode.com/problems/sliding-window-maximum/description/

 You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

 Return the max sliding window.

 Example 1:
 Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
 Output: [3,3,5,5,6,7]
 Explanation:
 Window position                Max
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
  1 [3  -1  -3] 5  3  6  7       3
  1  3 [-1  -3  5] 3  6  7       5
  1  3  -1 [-3  5  3] 6  7       5
  1  3  -1  -3 [5  3  6] 7       6
  1  3  -1  -3  5 [3  6  7]      7

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]
 */

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result = [Int]()
    var stack = [Int]()
    var l = 0
    var r = 0
    while r < nums.count {
        // pop smaller values from stack
        while let top = stack.last, nums[r] > top {
            stack.popLast()
        }
        stack.append(nums[r])
        // remove left val from window
        if (r - l + 1) == k {
            result.append(stack[0])
            if nums[l] == stack[0] {
                stack.removeFirst()
            }
            l += 1
        }
        r += 1
    }
    return result
}

let result = maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3) // [3,3,5,5,6,7]
print(result)

let result1 = maxSlidingWindow([1], 1) // [1]
print(result1)
