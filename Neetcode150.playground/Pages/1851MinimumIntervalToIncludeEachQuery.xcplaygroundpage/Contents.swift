import Foundation

/*
 ## 1851. Minimum Interval to Include Each Query
 https://leetcode.com/problems/minimum-interval-to-include-each-query/description/
 NOTE: WORKS BUT TIMES OUT. Maybe can't be done without a HEAP.

 You are given a 2D integer array intervals, where intervals[i] = [lefti, righti] describes the ith interval starting at lefti and ending at righti (inclusive). The size of an interval is defined as the number of integers it contains, or more formally righti - lefti + 1.

 You are also given an integer array queries. The answer to the jth query is the size of the smallest interval i such that lefti <= queries[j] <= righti. If no such interval exists, the answer is -1.

 Return an array containing the answers to the queries.

 Example 1:
 Input: intervals = [[1,4],[2,4],[3,6],[4,4]], queries = [2,3,4,5]
 Output: [3,3,1,4]
 Explanation: The queries are processed as follows:
 - Query = 2: The interval [2,4] is the smallest interval containing 2. The answer is 4 - 2 + 1 = 3.
 - Query = 3: The interval [2,4] is the smallest interval containing 3. The answer is 4 - 2 + 1 = 3.
 - Query = 4: The interval [4,4] is the smallest interval containing 4. The answer is 4 - 4 + 1 = 1.
 - Query = 5: The interval [3,6] is the smallest interval containing 5. The answer is 6 - 3 + 1 = 4.

 Example 2:
 Input: intervals = [[2,3],[2,5],[1,8],[20,25]], queries = [2,19,5,22]
 Output: [2,-1,4,6]
 Explanation: The queries are processed as follows:
 - Query = 2: The interval [2,3] is the smallest interval containing 2. The answer is 3 - 2 + 1 = 2.
 - Query = 19: None of the intervals contain 19. The answer is -1.
 - Query = 5: The interval [2,5] is the smallest interval containing 5. The answer is 5 - 2 + 1 = 4.
 - Query = 22: The interval [20,25] is the smallest interval containing 22. The answer is 25 - 20 + 1 = 6.
 */

func minInterval(intervals: [[Int]], queries: [Int]) -> [Int] {

    let intervals = intervals.sorted { $0[0] < $1[0] }
    var result = [Int]()
    for q in queries {
        var holder = Int.max
        for i in intervals {
            if q < i[0] || q > i[1] { continue }
            holder = min(holder, i[1] - i[0] + 1)
        }
        result.append(holder == Int.max ? -1 : holder)
    }

    return result
}

let result = minInterval([[1,4],[2,4],[3,6],[4,4]], [2,3,4,5]) // [3,3,1,4]
print(result)

let result1 = minInterval([[2,3],[2,5],[1,8],[20,25]], [2,19,5,22]) // [2,-1,4,6]
print(result1)
