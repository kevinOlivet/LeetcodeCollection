import Foundation

/*
 ## 129. Sum Root to Leaf Numbers
 https://leetcode.com/problems/sum-root-to-leaf-numbers/description/?envType=study-plan-v2&envId=top-interview-150

 You are given the root of a binary tree containing digits from 0 to 9 only.

 Each root-to-leaf path in the tree represents a number.

 For example, the root-to-leaf path 1 -> 2 -> 3 represents the number 123.
 Return the total sum of all root-to-leaf numbers. Test cases are generated so that the answer will fit in a 32-bit integer.

 A leaf node is a node with no children.

 Example 1:
 Input: root = [1,2,3]
 Output: 25
 Explanation:
 The root-to-leaf path 1->2 represents the number 12.
 The root-to-leaf path 1->3 represents the number 13.
 Therefore, sum = 12 + 13 = 25.

 Example 2:
 Input: root = [4,9,0,5,1]
 Output: 1026
 Explanation:
 The root-to-leaf path 4->9->5 represents the number 495.
 The root-to-leaf path 4->9->1 represents the number 491.
 The root-to-leaf path 4->0 represents the number 40.
 Therefore, sum = 495 + 491 + 40 = 1026.
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

func sumNumbers(_ root: TreeNode?) -> Int {
    func dfs(_ node: TreeNode?, _ cur: Int) -> Int {
        guard let node = node else { return 0 }
        var cur = cur
        cur = cur * 10 + node.val
        if node.left == nil && node.right == nil {
            return cur
        }
        return dfs(node.left, cur) + dfs(node.right, cur)
    }
    return dfs(root, 0)
}

//          1
//        /   \
//      2       5
//     / \        \
//    3   4         6

let three = TreeNode(3)
let four = TreeNode(4)
let two = TreeNode(2, three, four)

let six = TreeNode(6)
let five = TreeNode(5, nil, six)

let one = TreeNode(1, two, five)

let result = sumNumbers(one) // 403
print(result)
