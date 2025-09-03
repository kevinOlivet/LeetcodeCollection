import Foundation

/*
 ## 399. Evaluate Division
 https://leetcode.com/problems/evaluate-division/description/?envType=study-plan-v2&envId=top-interview-150

 You are given an array of variable pairs equations and an array of real numbers values, where equations[i] = [Ai, Bi] and values[i] represent the equation Ai / Bi = values[i]. Each Ai or Bi is a string that represents a single variable.

 You are also given some queries, where queries[j] = [Cj, Dj] represents the jth query where you must find the answer for Cj / Dj = ?.

 Return the answers to all queries. If a single answer cannot be determined, return -1.0.

 Note: The input is always valid. You may assume that evaluating the queries will not result in division by zero and that there is no contradiction.

 Note: The variables that do not occur in the list of equations are undefined, so the answer cannot be determined for them.

 Example 1:
 Input: equations = [["a","b"],["b","c"]], values = [2.0,3.0], queries = [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"]]
 Output: [6.00000,0.50000,-1.00000,1.00000,-1.00000]
 Explanation:
 Given: a / b = 2.0, b / c = 3.0
 queries are: a / c = ?, b / a = ?, a / e = ?, a / a = ?, x / x = ?
 return: [6.0, 0.5, -1.0, 1.0, -1.0 ]
 note: x is undefined => -1.0

 Example 2:
 Input: equations = [["a","b"],["b","c"],["bc","cd"]], values = [1.5,2.5,5.0], queries = [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]
 Output: [3.75000,0.40000,5.00000,0.20000]
 Example 3:

 Input: equations = [["a","b"]], values = [0.5], queries = [["a","b"],["b","a"],["a","c"],["x","y"]]
 Output: [0.50000,2.00000,-1.00000,-1.00000]
 */

func calcEquation(_ equations: [[String]],
                  _ values: [Double],
                  _ queries: [[String]]) -> [Double] {

    var adj = [String: [(String, Double)]]()
    // a and b are node and values are edge weights
    for (e, v) in zip(equations, values) {
        adj[e[0], default: []].append((e[1], v))
        adj[e[1], default: []].append((e[0], 1/v))
    }

    // a / b or src -> target
    func bfs(_ src: String, _ target: String) -> Double {
        // either source or destination aren't in equations
        if !adj.keys.contains(src) || !adj.keys.contains(target) {
            return -1
        }
        var q = [(src, 1.0)]
        var visited: Set<String> = [src]
        while !q.isEmpty {
            let (n, w) = q.removeFirst()
            if n == target { return w }
            for (nei, weight) in adj[n]! {
                if visited.contains(nei) { continue }
                visited.insert(nei)
                q.append((nei, w * weight))
            }
        }
        // both nodes exist but path doesn't
        return -1

    }
    var result = [Double]()
    for q in queries {
        result.append(bfs(q[0], q[1]))
    }
    return result
}

let result = calcEquation([["a","b"],["b","c"]], [2.0,3.0], [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"]])
print(result) // [6.00000,0.50000,-1.00000,1.00000,-1.00000]

let result1 = calcEquation([["a","b"],["b","c"],["bc","cd"]], [1.5,2.5,5.0], [["a","c"],["c","b"],["bc","cd"],["cd","bc"]])
print(result1) // [3.75000,0.40000,5.00000,0.20000]
