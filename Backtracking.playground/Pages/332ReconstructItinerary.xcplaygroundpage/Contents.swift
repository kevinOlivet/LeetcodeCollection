import Foundation

/*
 332. Reconstruct Itinerary
 https://leetcode.com/problems/reconstruct-itinerary/

 You are given a list of airline tickets where tickets[i] = [fromi, toi] represent the departure and the arrival airports of one flight. Reconstruct the itinerary in order and return it.

 All of the tickets belong to a man who departs from "JFK", thus, the itinerary must begin with "JFK". If there are multiple valid itineraries, you should return the itinerary that has the smallest lexical order when read as a single string.

 For example, the itinerary ["JFK", "LGA"] has a smaller lexical order than ["JFK", "LGB"].
 You may assume all tickets form at least one valid itinerary. You must use all the tickets once and only once.

 Example 1:
 Input: tickets = [["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]
 Output: ["JFK","MUC","LHR","SFO","SJC"]

 Example 2:
 Input: tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
 Output: ["JFK","ATL","JFK","SFO","ATL","SFO"]
 Explanation: Another possible reconstruction is ["JFK","SFO","ATL","JFK","ATL","SFO"] but it is larger in lexical order.
 */

func findItinerary(_ tickets: [[String]]) -> [String] {

    let tickets = tickets.sorted { ($0[0], $0[1]) < ($1[0], $1[1]) }

    var adj = [String: [String]]()
    for tic in tickets {
        let src = tic[0]
        let dst = tic[1]
        adj[src, default: []].append(dst)
    }

    var result = ["JFK"]

    func backtrack(src: String) -> Bool {
        if result.count == tickets.count + 1 {
            return true
        }
        if adj[src] == nil {
            return false
        }
        var temp = adj[src]!
        for (i, v) in temp.enumerated() {
            adj[src]?.remove(at: i)
            result.append(v)
            if backtrack(src: v) {
                return true
            }
            adj[src]!.insert(v, at: i)
            result.popLast()
        }
        return false
    }
    backtrack(src: "JFK")
    return result
}

let result = findItinerary([["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]) // ["JFK","MUC","LHR","SFO","SJC"]
print(result)

let result1 = findItinerary([["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]) //["JFK","ATL","JFK","SFO","ATL","SFO"]
print(result1)
