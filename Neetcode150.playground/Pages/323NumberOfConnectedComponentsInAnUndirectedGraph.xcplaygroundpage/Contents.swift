import Foundation

/*
 ## 323. Number of Connected Components in an Undirected Graph
 Leetcode requires subscription for this so link is to NeetCode
 https://neetcode.io/problems/count-connected-components

 There is an undirected graph with n nodes. There is also an edges array, where edges[i] = [a, b] means that there is an edge between node a and node b in the graph.

 The nodes are numbered from 0 to n - 1.

 Return the total number of connected components in that graph.

 Example 1:
 Input:
 n=3
 edges=[[0,1], [0,2]]
 Output: 1

 Example 2:
 Input:
 n=6
 edges=[[0,1], [1,2], [2,3], [4,5]]
 Output: 2
 */

// UNION FIND (use when adding or removing to graph like Number of Islands 2 (subscription only(
func countComponents(n: Int, edges: [[Int]]) -> Int {
    var parent = Array(0..<n)
    var rank = Array(repeating: 1, count: n)
    func find(n: Int) -> Int {
        var n = n
        while n != parent[n] {
            parent[n] = parent[parent[n]] // Optimization
            n = parent[n]
        }
        return n
    }
    func union(n1: Int, n2: Int) -> Int {
        let p1 = find(n: n1)
        let p2 = find(n: n2)

        if p1 == p2 { return 0 } // No Union Performed

        if rank[p1] > rank[p2] { // Union based on rank
            parent[p2] = p1
            rank[p1] += rank[p2]
        } else {
            parent[p1] = p2
            rank[p2] += rank[p1]
        }
        return 1 // Union performed so will subtract 1 from n (total nodes)
//        parent[find(n: n2)] = find(n: n1)
    }
    var result = n
    for e in edges {
        let n1 = e[0]
        let n2 = e[1]
        result -= union(n1: n1, n2: n2)
    }
    return result
}

// DFS
//func countComponents(n: Int, edges: [[Int]]) -> Int {
//    var adj = [Int: [Int]]()
//    for i in 0..<n {
//        adj[i] = []
//    }
//    for e in edges {
//        let n1 = e[0]
//        let n2 = e[1]
//        adj[n1, default: []].append(n2)
//        adj[n2, default: []].append(n1)
//    }
//    var visited = Set<Int>()
//    func dfs(_ i: Int) {
//        if visited.contains(i) { return }
//        visited.insert(i)
//        for nei in adj[i, default: []] {
//            dfs(nei)
//        }
//    }
//    var count = 0
//    for i in 0..<n where !visited.contains(i) {
//        dfs(i)
//        count += 1
//    }
//    return count
//}

let result = countComponents(n: 3, edges: [[0,1], [0,2]]) // 1
print(result)

let result1 = countComponents(n: 6, edges: [[0,1], [1,2], [2,3], [4,5]]) // 2
print(result1)

let result2 = countComponents(n: 9, edges: [[0,1], [1,2], [2,3], [1,3], [1,4], [5,6], [7,8], [7,9]]) // 3
print(result2)
