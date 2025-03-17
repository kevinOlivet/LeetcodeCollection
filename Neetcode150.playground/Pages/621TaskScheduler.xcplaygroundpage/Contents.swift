import Foundation

/*
 ## 621. Task Scheduler
 https://leetcode.com/problems/task-scheduler/description/

 You are given an array of CPU tasks, each labeled with a letter from A to Z, and a number n. Each CPU interval can be idle or allow the completion of one task. Tasks can be completed in any order, but there's a constraint: there has to be a gap of at least n intervals between two tasks with the same label.

 Return the minimum number of CPU intervals required to complete all tasks.

 Example 1:
 Input: tasks = ["A","A","A","B","B","B"], n = 2
 Output: 8
 Explanation: A possible sequence is: A -> B -> idle -> A -> B -> idle -> A -> B.
 After completing task A, you must wait two intervals before doing A again. The same applies to task B. In the 3rd interval, neither A nor B can be done, so you idle. By the 4th interval, you can do A again as 2 intervals have passed.

 Example 2:
 Input: tasks = ["A","C","A","B","D","B"], n = 1
 Output: 6
 Explanation: A possible sequence is: A -> B -> C -> D -> A -> B.
 With a cooling interval of 1, you can repeat a task after just one other task.

 Example 3:
 Input: tasks = ["A","A","A", "B","B","B"], n = 3
 Output: 10
 Explanation: A possible sequence is: A -> B -> idle -> idle -> A -> B -> idle -> idle -> A -> B.
 There are only two types of tasks, A and B, which need to be separated by 3 intervals. This leads to idling twice between repetitions of these tasks.
 */

func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    guard n > 0 else { return tasks.count }
    var counts = [Character: Int]()
    for task in tasks {
        counts[task, default: 0] += 1
    }
    let maxCount = counts.values.max()! - 1
    var result = (n + 1) * maxCount
    var places = result
    for count in counts.values {
        let available = min(count, maxCount, places)
        places -= available
        result += count - available
    }
    return result
}

let result = leastInterval(["A","A","A","B","B","B"], 2) // 8
print(result)

let result1 = leastInterval(["A","C","A","B","D","B"], 1) // 6
print(result1)

let result2 = leastInterval(["A","A","A", "B","B","B"], 3) // 10
print(result2)
