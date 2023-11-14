import Foundation

/*
 https://leetcode.com/problems/car-fleet/description/

 There are n cars going to the same destination along a one-lane road. The destination is target miles away.

 You are given two integer array position and speed, both of length n, where position[i] is the position of the ith car and speed[i] is the speed of the ith car (in miles per hour).

 A car can never pass another car ahead of it, but it can catch up to it and drive bumper to bumper at the same speed. The faster car will slow down to match the slower car's speed. The distance between these two cars is ignored (i.e., they are assumed to have the same position).

 A car fleet is some non-empty set of cars driving at the same position and same speed. Note that a single car is also a car fleet.

 If a car catches up to a car fleet right at the destination point, it will still be considered as one car fleet.

 Return the number of car fleets that will arrive at the destination.
 */

func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {

    let pair = zip(position, speed).sorted { ($0.0, $0.1) > ($1.0, $1.1) }

    var stack = [Double]()

    for (p, s) in pair {
        stack.append(Double(target - p) / Double(s))
        if stack.count >= 2 && stack[stack.count - 1] <= stack[stack.count - 2] {
            stack.popLast()
        }
    }

    return stack.count
}

let result = carFleet(12, [10,8,0,5,3], [2,4,1,1,3]) // 3
print(result)

let result1 = carFleet(10, [3], [3]) // 1
print(result1)

let result2 = carFleet(100, [0,2,4], [4,2,1]) // 1
print(result2)

let result3 = carFleet(10, [6,8], [3,2]) // 2
print(result3)
