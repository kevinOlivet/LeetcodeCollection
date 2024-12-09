import Foundation

/*
 ## 46. Permutations
 https://leetcode.com/problems/permutations/description/

 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 Example 2:
 Input: nums = [0,1]
 Output: [[0,1],[1,0]]

 Example 3:
 Input: nums = [1]
 Output: [[1]]
 */

//func permute(_ nums: [Int]) -> [[Int]] {
//    var result = [[Int]]()
//
//    func recursion(_ list: [Int], _ rest: [Int]) -> Void {
//        for (i, item) in rest.enumerated() {
//            var list = list
//            var rest = rest
//
//            list.append(item)
//            rest.remove(at: i)
//            if list.count == nums.count { result.append(list) }
//            recursion(list, rest)
//        }
//    }
//    recursion([], nums)
//    return result
//}
//
//let result = permute([1,2,3]) // [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
//result.forEach { print($0) }

func permute1(_ nums: [Int]) -> [[Int]] {
    var nums = nums
    var result = [[Int]]()

    func backtrack(i: Int) {
        if i >= nums.count {
            result.append(nums)
            print("End")
            print("Result: ", result)
        }

        for j in i..<nums.count {
            print("Swap")
            nums.swapAt(i, j)
            print("Backtrack ______________________")
            backtrack(i: i + 1)
            print("Swap back!")
            nums.swapAt(i, j)
        }
        print("-----------")
    }
    backtrack(i: 0)
    return result
}

let result = permute1([1,2,3]) // [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
//result.forEach { print($0) }

//let result1 = permute1([0,1]) // [[0, 1], [1, 0]]

//func permute(_ nums: [Int]) -> [[Int]] {
//    var ans = [[Int]]()
//    var sol = [Int]()
//
//    func backtrack() {
//        if sol.count == nums.count {
//            ans.append(sol)
//            return
//        }
//
//        for x in nums {
//            if !sol.contains(x) {
//                sol.append(x)
//                backtrack()
//                sol.removeFirst()
//            }
//        }
//    }
//    backtrack()
//    return ans
//}
//
//let result = permute([1,2,3]) // [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
//print(result)
