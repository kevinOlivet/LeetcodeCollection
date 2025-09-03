import Foundation

/*
 ## 108. Convert Sorted Array to Binary Search Tree
 https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.

 Example 1:
 Input: nums = [-10,-3,0,5,9]
 Output: [0,-3,9,-10,null,5]
 Explanation: [0,-10,5,null,-3,null,9] is also accepted:

 Example 2:
 Input: nums = [1,3]
 Output: [3,1]
 Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {

    func helper(_ l: Int, _ r: Int) -> TreeNode? {
        if l > r { return nil }
        let m = ((r - l)/2) + l
        let root = TreeNode(nums[m])
        root.left = helper(l, m - 1)
        root.right = helper(m + 1, r)
        return root
    }
    return helper(0, nums.count - 1)
}

let result = sortedArrayToBST([-10,-3,0,5,9])
print(result)

let result1 = sortedArrayToBST([1,3])
print(result1)
