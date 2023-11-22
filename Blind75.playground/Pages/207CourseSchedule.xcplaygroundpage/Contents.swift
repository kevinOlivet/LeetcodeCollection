import Foundation

/*
 207. Course Schedule
 https://leetcode.com/problems/course-schedule/description/

 There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

 For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
 Return true if you can finish all courses. Otherwise, return false.

 Example 1:
 Input: numCourses = 2, prerequisites = [[1,0]]
 Output: true
 Explanation: There are a total of 2 courses to take.
 To take course 1 you should have finished course 0. So it is possible.

 Example 2:
 Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
 Output: false
 Explanation: There are a total of 2 courses to take.
 To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.
 */

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var preMap = [Int: [Int]]()

    for course in prerequisites {
        preMap[course[0], default: []].append(course[1])
    }

    var visitSet = Set<Int>()

    func dfs(crs: Int) -> Bool {
        if visitSet.contains(crs) { return false }
        if preMap[crs] == nil || preMap[crs]!.isEmpty { return true }

        visitSet.insert(crs)
        for pre in preMap[crs]! {
            if !dfs(crs: pre) { return false }
        }
        visitSet.remove(crs)
        preMap[crs] = []
        return true
    }

    for crs in 0..<numCourses {
        if !dfs(crs: crs) { return false }
    }
    return true
}

let result = canFinish(2, [[1,0]]) // true
print(result)

let result1 = canFinish(2, [[1,0],[0,1]]) // false
print(result1)
