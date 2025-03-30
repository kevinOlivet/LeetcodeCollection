import Foundation

/*
 ## 684. Redundant Connection
 https://leetcode.com/problems/redundant-connection/description/

 In this problem, a tree is an undirected graph that is connected and has no cycles.

 You are given a graph that started as a tree with n nodes labeled from 1 to n, with one additional edge added. The added edge has two different vertices chosen from 1 to n, and was not an edge that already existed. The graph is represented as an array edges of length n where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the graph.

 Return an edge that can be removed so that the resulting graph is a tree of n nodes. If there are multiple answers, return the answer that occurs last in the input.

 Example 1:
 Input: edges = [[1,2],[1,3],[2,3]]
 Output: [2,3]

 Example 2:
 Input: edges = [[1,2],[2,3],[3,4],[1,4],[1,5]]
 Output: [1,4]
 */

func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
    // Add 1 for zero node, not used
    var parent = Array(0..<edges.count + 1)
    var rank = Array(repeating: 1, count: edges.count + 1)

    func find(n: Int) -> Int {
        var n = n
        while n != parent[n] {
            parent[n] = parent[parent[n]]
            n = parent[n]
        }
        return n
    }
    // Return false if can't complete/ alreay merged
    func union(n1: Int, n2: Int) -> Bool {
        let p1 = find(n: n1)
        let p2 = find(n: n2)
        if p1 == p2 { return false }

        if rank[p1] > rank[p2] {
            parent[p2] = p1
            rank[p1] += rank[p2]
        } else {
            parent[p1] = p2
            rank[p2] += rank[p1]
        }
        return true
    }
    for e in edges {
        if !union(n1: e[0], n2: e[1]) {
            return [e[0], e[1]]
        }
    }
    return []
}

let result = findRedundantConnection([[1,2],[1,3],[2,3]]) // [2, 3]
print(result)

let result1 = findRedundantConnection([[1,2],[2,3],[3,4],[1,4],[1,5]]) // [1,4]
print(result1)
