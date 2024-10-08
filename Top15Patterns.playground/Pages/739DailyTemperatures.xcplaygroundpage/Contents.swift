import Foundation

/*
 ## 739. Daily Temperatures
 https://leetcode.com/problems/daily-temperatures/description/

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

 Example 1:
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]

 Example 2:
 Input: temperatures = [30,40,50,60]
 Output: [1,1,1,0]

 Example 3:
 Input: temperatures = [30,60,90]
 Output: [1,1,0]
 */

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {

    var result = Array(repeating: 0, count: temperatures.count)
    var stack = [(temp: Int, index: Int)]() // temp, index

    for (i, t) in temperatures.enumerated() {
        while let top = stack.last, t > top.temp {
            let topTemp = top.temp
            let topIndex = top.index
            result[topIndex] = i - topIndex
            stack.popLast()
        }
        stack.append((temp: t, index: i))
    }
    return result
}

let result = dailyTemperatures([73,74,75,71,69,72,76,73]) // [1,1,4,2,1,1,0,0]
print(result)

let result1 = dailyTemperatures([30,40,50,60]) // [1,1,1,0]
print(result1)

let result2 = dailyTemperatures([30,60,90]) // [1,1,0]
print(result2)
