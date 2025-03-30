import Foundation

/*
 ## 178. Graph Valid Tree
 Leetcode requires subscription for it so the link is to Neetcode page
 https://neetcode.io/problems/valid-tree

 Given n nodes labeled from 0 to n - 1 and a list of undirected edges (each edge is a pair of nodes), write a function to check whether these edges make up a valid tree.

 Example 1:
 Input:
 n = 5
 edges = [[0, 1], [0, 2], [0, 3], [1, 4]]
 Output:
 true

 Example 2:
 Input:
 n = 5
 edges = [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]
 Output:
 false

 Note:
 You can assume that no duplicate edges will appear in edges. Since all edges are undirected, [0, 1] is the same as [1, 0] and thus will not appear together in edges.
 */

func validTree(n: Int, edges: [[Int]]) -> Bool {
    var adj = [Int: [Int]]()
    for i in 0..<n {
        adj[i] = []
    }
    for e in edges {
        let n1 = e[0]
        let n2 = e[1]
        adj[n1, default: []].append(n2)
        adj[n2, default: []].append(n1)
    }
    var visited = Set<Int>()
    func dfs(n1: Int, prev: Int) -> Bool {
        if visited.contains(n1) { return false }
        visited.insert(n1)
        for n2 in adj[n1, default: []] {
            if n2 == prev { continue }
            if !dfs(n1: n2, prev: n1) { return false }
        }
        return true
    }
    return dfs(n1: 0, prev: -1) && n == visited.count
}

let result = validTree(n: 5, edges: [[0, 1], [0, 2], [0, 3], [1, 4]]) // true
print(result)

let result1 = validTree(n: 5, edges: [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]) // false
print(result1)
