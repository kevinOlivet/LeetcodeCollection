import Foundation

/*
 ## 235. Lowest Common Ancesotr of a Binary Search Tree
 https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/description/

 Given a binary search tree (BST), find the lowest common ancestor (LCA) node of two given nodes in the BST.

 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

 Example 1:
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
 Output: 6
 Explanation: The LCA of nodes 2 and 8 is 6.

 Example 2:
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
 Output: 2
 Explanation: The LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.

 Example 3:
 Input: root = [2,1], p = 2, q = 1
 Output: 2
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

func lowestCommonAncestor(_ root: TreeNode?,
                          _ p: TreeNode?,
                          _ q: TreeNode?) -> TreeNode? {

    var current = root

    while current != nil {
        if p!.val < current!.val && q!.val < current!.val {
            current = current!.left
        } else if p!.val > current!.val && q!.val > current!.val {
            current = current!.right
        } else {
            return current
        }
    }

    return nil
}


//            5
//          /   \
//         3     6
//        / \
//       2   4
//      /
//     1

let one = TreeNode(1)

let two = TreeNode(2, one, nil)
let four = TreeNode(4)

let three = TreeNode(3, two, four)
let six = TreeNode(6)

let five = TreeNode(5, three, six)

let result = lowestCommonAncestor(five, one, four)
print(result)
