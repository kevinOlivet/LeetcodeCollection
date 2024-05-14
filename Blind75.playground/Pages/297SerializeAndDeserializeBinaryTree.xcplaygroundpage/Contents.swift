import Foundation

/*
 ## 297. Serialize and Deserialize Binary Tree
 https://leetcode.com/problems/serialize-and-deserialize-binary-tree/description/

 Serialization is the process of converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.

 Design an algorithm to serialize and deserialize a binary tree. There is no restriction on how your serialization/deserialization algorithm should work. You just need to ensure that a binary tree can be serialized to a string and this string can be deserialized to the original tree structure.

 Clarification: The input/output format is the same as how LeetCode serializes a binary tree. You do not necessarily need to follow this format, so please be creative and come up with different approaches yourself.

 Example 1:
 Input: root = [1,2,3,null,null,4,5]
 Output: [1,2,3,null,null,4,5]

 Example 2:
 Input: root = []
 Output: []
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


func serialize(_ root: TreeNode?) -> String {
    var result = [String]()

    func dfs(_ node: TreeNode?) {
        guard let node = node else {
            result.append("N")
            return
        }

        // preorder traversal so append before the recursive calls
        result.append(String(node.val))

        dfs(node.left)
        dfs(node.right)
    }
    dfs(root)
    return result.joined(separator: ",")
}

func deserialize(_ data: String) -> TreeNode? {
    let vals = data.components(separatedBy: ",")
    var i = 0

    func dfs() -> TreeNode? {
        if vals[i] == "N" {
            i += 1
            return nil
        }
        let node = TreeNode(Int(vals[i])!)
        i += 1
        node.left = dfs()
        node.right = dfs()
        return node
    }
    return dfs()
}

//            3
//          /   \
//          9   20
//             /  \
//             15  7

let SevenNode = TreeNode(7)
let FifteenNode = TreeNode(15)
let TwentyNode = TreeNode(20, FifteenNode, SevenNode)

let NineNode = TreeNode(9)

let ThreeNode = TreeNode(3, NineNode, TwentyNode)

let result = serialize(ThreeNode)
print(result)

let result1 = deserialize(result)
print(result1)
