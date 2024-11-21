import Foundation

/*
 ## 210. Course Schedule II
 https://leetcode.com/problems/course-schedule-ii/description/

 There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

 For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
 Return the ordering of courses you should take to finish all courses. If there are many valid answers, return any of them. If it is impossible to finish all courses, return an empty array.

 Example 1:
 Input: numCourses = 2, prerequisites = [[1,0]]
 Output: [0,1]
 Explanation: There are a total of 2 courses to take. To take course 1 you should have finished course 0. So the correct course order is [0,1].

 Example 2:
 Input: numCourses = 4, prerequisites = [[1,0],[2,0],[3,1],[3,2]]
 Output: [0,2,1,3]
 Explanation: There are a total of 4 courses to take. To take course 3 you should have finished both courses 1 and 2. Both courses 1 and 2 should be taken after you finished course 0.
 So one correct course order is [0,1,2,3]. Another correct ordering is [0,2,1,3].

 Example 3:
 Input: numCourses = 1, prerequisites = []
 Output: [0]
 */

func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
    // Make adjacency list
    var adj = [Int: [Int]]()
    for c in 0..<numCourses {
        adj[c] = []
    }
    for i in 0..<prerequisites.count {
        let course = prerequisites[i][0]
        let pre = prerequisites[i][1]
        adj[course, default: []].append(pre)
    }

    var result = [Int]()

    // Sets to keep track of visited and cycles (SET visited.contains is faster than result.contains)
    var visited = Set<Int>()
    var cycle = Set<Int>()

    func dfs(_ course: Int) -> Bool { // Returns if there's is cycle or not
        if cycle.contains(course) { return false }
        if visited.contains(course) { return true } // Don't need to visit again

        cycle.insert(course) // Add to cycle before recursion

        for pre in adj[course] ?? [] {
            if dfs(pre) == false { return false } // cycle found so return false
        }
        cycle.remove(course) // No longer along path
        visited.insert(course) // Add to visit so don't have to visit again
        result.append(course) // Add to result
        return true
    }

    for c in 0..<numCourses { // Check if each course is possible
        if dfs(c) == false { return [] } // Builds result, but if cycle detected eject
    }
    return result
}

let result = findOrder(2, [[1,0]]) // [0,1]
print(result)

let result1 = findOrder(4, [[1,0],[2,0],[3,1],[3,2]]) // [0,2,1,3]
print(result1)

let result2 = findOrder(1, []) // [0]
print(result2)
