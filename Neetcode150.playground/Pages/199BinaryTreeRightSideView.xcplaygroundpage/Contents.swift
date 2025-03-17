import Foundation

/*
 ## 199. Binary Tree Right Side View
 Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

 Example 1:
 Input: root = [1,2,3,null,5,null,4]
 Output: [1,3,4]
 Explanation:

 Example 2:
 Input: root = [1,2,3,4,null,null,null,5]
 Output: [1,3,4,5]
 Explanation:

 Example 3:
 Input: root = [1,null,3]
 Output: [1,3]

 Example 4:
 Input: root = []
 Output: []
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ leftc: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    var result = [Int]()
    var q = [root]
    while !q.isEmpty {
        result.append(q.last!.val)
        for i in 0..<q.count {
            let node = q.removeFirst()
            if let left = node.left { q.append(left) }
            if let right = node.right { q.append(right) }
        }
    }
    return result
}
