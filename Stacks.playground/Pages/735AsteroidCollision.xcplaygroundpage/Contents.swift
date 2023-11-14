import Foundation

/*
 735. Asteroid Collision
 https://leetcode.com/problems/asteroid-collision/

 We are given an array asteroids of integers representing asteroids in a row.

 For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

 Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

 Example 1:
 Input: asteroids = [5,10,-5]
 Output: [5,10]
 Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.

 Example 2:
 Input: asteroids = [8,-8]
 Output: []
 Explanation: The 8 and -8 collide exploding each other.

 Example 3:
 Input: asteroids = [10,2,-5]
 Output: [10]
 Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.
 */

func asteroidCollision(_ asteroids: [Int]) -> [Int] {

    var stack = [Int]()

    for var a in asteroids {

        // Collision can only occur if a is negative and stack top is positive
        while !stack.isEmpty && a < 0 && stack.last! > 0 {
            let diff = stack.last! - abs(a)
            if diff < 0 {
                // If diff is negative, negative asteroid wins
                stack.popLast()
            } else if diff > 0 {
                // If diff is positive, positive asteroid wins
                // Set it to 0 so we won't use it later
                a = 0
            } else {
                // Do both
                a = 0
                stack.popLast()
            }
        }

        // We set it to 0 as a marker not to use it later
        if a != 0 { stack.append(a) }
    }

    return stack
}

let result = asteroidCollision([5,10,-5]) // [5, 10]
print(result)

let result1 = asteroidCollision([8,-8]) // []
print(result1)

let result2 = asteroidCollision([10,2,-5]) // [10]
print(result2)
