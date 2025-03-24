import Foundation

/*
 ## 286. Walls and Gates or lintCode 663. Walls and Gates
 Leetcode requires subscription for this
 https://www.lintcode.com/problem/663/

 You are given a m x n 2D grid initialized with these three possible values.
 -1 = A wall or an obstacle.
 0 = A gate.
 INF = Infinity means an empty room. We use the value 2^31 - 1 = 2147483647 to represent INF as you may assume that the distance to a gate is less than 2147483647.
 Fill each empty room with the distance to its nearest gate. If it is impossible to reach a Gate, that room should remain filled with INF

 Example1:
 Input:
 [
 [2147483647,-1,0,2147483647],
 [2147483647,2147483647,2147483647,-1],
 [2147483647,-1,2147483647,-1],
 [0,-1,2147483647,2147483647]
 ]
 Output:
 [
 [3,-1,0,1],
 [2,2,1,-1],
 [1,-1,2,-1],
 [0,-1,3,4]
 ]

 Explanation:
 the 2D grid is:

 INF -1 0 INF
 INF INF INF -1
 INF -1 INF -1
 0 -1 INF INF

 the answer is:
 3 -1 0 1
 2 2 1 -1
 1 -1 2 -1
 0 -1 3 4

 Example2
 Input:
 [
 [0,-1],
 [2147483647,2147483647]
 ]
 Output:
 [
 [0,-1],
 [1,2]
 ]
 */

func wallsAndGates(_ rooms: [[Int]]) -> [[Int]] {
    var rooms = rooms
    var set = Set<[Int]>()
    var q = [(r: Int, c: Int)]()

    func addRoom(r: Int, c: Int) {
        if (r < 0 || r == rooms.count) ||
            (c < 0 || c == rooms[0].count) ||
            set.contains([r, c]) || rooms[r][c] == -1 {
            return
        }
        set.insert([r, c])
        q.append((r, c))
    }

    for r in 0..<rooms.count {
        for c in 0..<rooms[0].count {
            if rooms[r][c] == 0 {
                q.append((r, c))
                set.insert([r, c])
            }
        }
    }

    var dist = 0
    while !q.isEmpty {
        for i in 0..<q.count {
            let (r, c) = q.removeFirst()
            rooms[r][c] = dist
            addRoom(r: r + 1, c: c)
            addRoom(r: r - 1, c: c)
            addRoom(r: r, c: c + 1)
            addRoom(r: r, c: c - 1)
        }
        dist += 1
    }
    return rooms
}

var input = [
    [2147483647,-1,0,2147483647],
    [2147483647,2147483647,2147483647,-1],
    [2147483647,-1,2147483647,-1],
    [0,-1,2147483647,2147483647]
]

let result = wallsAndGates(input)
print(result)
/*
 3 -1 0 1
 2 2 1 -1
 1 -1 2 -1
 0 -1 3 4
 */

var input1 = [
    [0,-1],
    [2147483647,2147483647]
]

let result1 = wallsAndGates(input1)
print(result1)
/*
 [
 [0,-1],
 [1,2]
 ]
 */
