import Foundation

/*
 173. Binary Search Tree Iterator
 https://leetcode.com/problems/binary-search-tree-iterator/description/

 Implement the BSTIterator class that represents an iterator over the in-order traversal of a binary search tree (BST):

 BSTIterator(TreeNode root) Initializes an object of the BSTIterator class. The root of the BST is given as part of the constructor. The pointer should be initialized to a non-existent number smaller than any element in the BST.
 boolean hasNext() Returns true if there exists a number in the traversal to the right of the pointer, otherwise returns false.
 int next() Moves the pointer to the right, then returns the number at the pointer.
 Notice that by initializing the pointer to a non-existent smallest number, the first call to next() will return the smallest element in the BST.

 You may assume that next() calls will always be valid. That is, there will be at least a next number in the in-order traversal when next() is called.

 Example 1:
 Input
 ["BSTIterator", "next", "next", "hasNext", "next", "hasNext", "next", "hasNext", "next", "hasNext"]
 [[[7, 3, 15, null, null, 9, 20]], [], [], [], [], [], [], [], [], []]
 Output
 [null, 3, 7, true, 9, true, 15, true, 20, false]

 Explanation
 BSTIterator bSTIterator = new BSTIterator([7, 3, 15, null, null, 9, 20]);
 bSTIterator.next();    // return 3
 bSTIterator.next();    // return 7
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 9
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 15
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 20
 bSTIterator.hasNext(); // return False
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

class BSTIterator {

    var stack: [TreeNode]!

    init(_ root: TreeNode?) {
        stack = [TreeNode]()
        var current = root
        while current != nil {
            stack.append(current!)
            current = current!.left
        }
    }

    func next() -> Int {
        let result = stack.popLast()!
        var current = result.right
        while current != nil {
            stack.append(current!)
            current = current!.left
        }
        return result.val
    }

    func hasNext() -> Bool {
        !stack.isEmpty
    }
}


// Your BSTIterator object will be instantiated and called as such:
let left = TreeNode(1)
let right = TreeNode(3)
let root = TreeNode(2, left, right)
let obj = BSTIterator(root)
let ret_1: Int = obj.next()
let ret_2: Bool = obj.hasNext()
