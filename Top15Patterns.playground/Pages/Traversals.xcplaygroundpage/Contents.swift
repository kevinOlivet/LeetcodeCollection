import Foundation

/*
              5
            /  \
           3    6
          / \
         2   4
        /
       1

Input: root = [5,3,6,2,4,null,null,1], k = 3
Output: 3
*/

let one = TreeNode(1)
let two = TreeNode(2, one, nil)

let four = TreeNode(4)

let three = TreeNode(3, two, four)

let six = TreeNode(6)

let five = TreeNode(5, three, six)

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

func preOrderTraversal(root: TreeNode?) {
    guard let root = root else { return }
    print(root.val, terminator: " ")
    preOrderTraversal(root: root.left)
    preOrderTraversal(root: root.right)
}
let result = preOrderTraversal(root: five)

print("\n")
print("=======================")

func inOrderTraversal(root: TreeNode?) {
    guard let root = root else { return }
    inOrderTraversal(root: root.left)
    print(root.val, terminator: " ")
    inOrderTraversal(root: root.right)
}
let result1 = inOrderTraversal(root: five)

print("\n")
print("=======================")

func postOrderTraversal(root: TreeNode?) {
    guard let root = root else { return }
    postOrderTraversal(root: root.left)
    postOrderTraversal(root: root.right)
    print(root.val, terminator: " ")
}
let result2 = postOrderTraversal(root: five)
