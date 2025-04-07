import Foundation

/*
 ## 787. Cheapest Flights Within K Stops
 https://leetcode.com/problems/cheapest-flights-within-k-stops/description/

 There are n cities connected by some number of flights. You are given an array flights where flights[i] = [fromi, toi, pricei] indicates that there is a flight from city fromi to city toi with cost pricei.

 You are also given three integers src, dst, and k, return the cheapest price from src to dst with at most k stops. If there is no such route, return -1.

 Example 1:
 Input: n = 4, flights = [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], src = 0, dst = 3, k = 1
 Output: 700
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 3 is marked in red and has cost 100 + 600 = 700.
 Note that the path through cities [0,1,2,3] is cheaper but is invalid because it uses 2 stops.

 Example 2:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 1
 Output: 200
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 2 is marked in red and has cost 100 + 100 = 200.

 Example 3:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 0
 Output: 500
 Explanation:
 The graph is shown above.
 The optimal path with no stops from city 0 to 2 is marked in red and has cost 500.
 */

func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
    var prices = Array(repeating: Int.max, count: n)
    prices[src] = 0
    
    for i in 0..<k+1 {
        var updated = false
        var temp = prices
        for f in flights {
            let from = f[0]
            let to = f[1]
            let price = f[2]
            if prices[from] != Int.max &&
                prices[from] + price < temp[to] {
                    temp[to] = prices[from] + price
                    updated = true
            }
        }
        prices = temp
        if !updated { break }
    }
    return prices[dst] == Int.max ? -1 : prices[dst]
}

let result = findCheapestPrice(4, [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], 0, 3, 1) // 700
print(result)

let result1 = findCheapestPrice(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 1) // 200
print(result1)

let result2 = findCheapestPrice(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 0) // 500
print(result2)
