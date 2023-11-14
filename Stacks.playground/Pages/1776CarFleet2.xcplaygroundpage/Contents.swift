import Foundation

/*
 https://leetcode.com/problems/car-fleet-ii/description/

 There are n cars traveling at different speeds in the same direction along a one-lane road. You are given an array cars of length n, where cars[i] = [positioni, speedi] represents:

 positioni is the distance between the ith car and the beginning of the road in meters. It is guaranteed that positioni < positioni+1.
 speedi is the initial speed of the ith car in meters per second.
 For simplicity, cars can be considered as points moving along the number line. Two cars collide when they occupy the same position. Once a car collides with another car, they unite and form a single car fleet. The cars in the formed fleet will have the same position and the same speed, which is the initial speed of the slowest car in the fleet.

 Return an array answer, where answer[i] is the time, in seconds, at which the ith car collides with the next car, or -1 if the car does not collide with the next car. Answers within 10-5 of the actual answers are accepted.
 */

func getCollisionTimes(_ cars: [[Int]]) -> [Double] {

    let cars = cars.sorted { ($0.first!, $0.last!) > ($1.first!, $1.last!) }

    var stack = [Double]()

    for car in cars {
        let time = Double(Int.max - car.first!) / Double(car.last!)
        stack.append(time)
        if stack.count >= 2 && stack[stack.count - 1] <= stack[stack.count - 2] {
            stack.popLast()
        }
    }

    return stack
}

let result = getCollisionTimes([[1,2],[2,1],[4,3],[7,2]]) // [1.00000,-1.00000,3.00000,-1.00000]
print(result)

//let result1 = getCollisionTimes([[3,4],[5,4],[6,3],[9,1]]) // [2.00000,1.00000,1.50000,-1.00000]
//print(result1)
