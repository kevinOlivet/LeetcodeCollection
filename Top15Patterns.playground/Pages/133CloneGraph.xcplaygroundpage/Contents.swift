import Foundation

/*
 ## 133. Clone Graph
 https://leetcode.com/problems/clone-graph/description/

 Given a reference of a node in a connected undirected graph.

 Return a deep copy (clone) of the graph.

 Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

 class Node {
     public int val;
     public List<Node> neighbors;
 }


 Test case format:

 For simplicity, each node's value is the same as the node's index (1-indexed). For example, the first node with val == 1, the second node with val == 2, and so on. The graph is represented in the test case using an adjacency list.

 An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a node in the graph.

 The given node will always be the first node with val = 1. You must return the copy of the given node as a reference to the cloned graph.

 Example 1:

    1 - 2
    |   |
    4 - 3

 Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
 Output: [[2,4],[1,3],[2,4],[1,3]]
 Explanation: There are 4 nodes in the graph.
 1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
 3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).

 Example 2:
 Input: adjList = [[]]
 Output: [[]]
 Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.

 Example 3:
 Input: adjList = []
 Output: []
 Explanation: This an empty graph, it does not have any nodes.
 */

let one = Node(1)
let two = Node(2)
let three = Node(3)
let four = Node(4)

one.neighbors = [two, four]
two.neighbors = [one, three]
three.neighbors = [two, four]
four.neighbors = [three, one]

public class Node: Hashable {
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
    // I had to make it confrom to Hashable here, but on Leetcode it was automatic
    public static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.val == rhs.val
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
    }
}

func cloneGraph(_ node: Node?) -> Node? {
    guard let node = node else { return nil }
    var oldToNew = [Node: Node]()

    func dfs(_ node: Node) -> Node {
        if let foundNode = oldToNew[node] {
            return foundNode
        }

        let copy = Node(node.val)
        oldToNew[node] = copy
        for nei in node.neighbors {
            let newNeighbor = dfs(nei!)
            copy.neighbors.append(newNeighbor)
        }
        return copy
    }
    return dfs(node)
}

let result = cloneGraph(one)
print(result!)
