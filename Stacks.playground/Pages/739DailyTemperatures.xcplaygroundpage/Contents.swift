import Foundation

/*
 https://leetcode.com/problems/daily-temperatures/description/

 739. Daily Temperatures

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

    let tempsReversed = temperatures.reversed()

    var tempStack = [Int]()
    var streakStack = [Int]()
    var result = [Int]()

    for temp in tempsReversed {
        var streak = 1
        while !tempStack.isEmpty && tempStack.last! <= temp {
            streak += streakStack.last!
            tempStack.popLast()
            streakStack.popLast()
        }
        if tempStack.isEmpty {
            result.append(0)
        } else {
            result.append(streak)
        }
        tempStack.append(temp)
        streakStack.append(streak)
    }

    return result.reversed()
}

let result = dailyTemperatures([73,74,75,71,69,72,76,73]) // [1,1,4,2,1,1,0,0]
print(result)

let result1 = dailyTemperatures([30,40,50,60]) // [1,1,1,0]
print(result1)

let result2 = dailyTemperatures([30,60,90]) // [1,1,0]
print(result2)
