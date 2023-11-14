import Foundation

/*
 1980. Find Unique Binary String
 https://leetcode.com/problems/find-unique-binary-string/description/

 Given an array of strings nums containing n unique binary strings each of length n, return a binary string of length n that does not appear in nums. If there are multiple answers, you may return any of them.

 Example 1:
 Input: nums = ["01","10"]
 Output: "11"
 Explanation: "11" does not appear in nums. "00" would also be correct.

 Example 2:
 Input: nums = ["00","01"]
 Output: "11"
 Explanation: "11" does not appear in nums. "10" would also be correct.

 Example 3:
 Input: nums = ["111","011","001"]
 Output: "101"
 Explanation: "101" does not appear in nums. "000", "010", "100", and "110" would also be correct.
 */

func findDifferentBinaryString(_ nums: [String]) -> String {
    let setNums = Set(nums)
    var result = ""

    var subset: [Character] = Array(repeating: "0", count: nums.count)

    func backtrack(i: Int) {
        guard result == "" else { return }
        if i >= nums.count {
            if !setNums.contains(String(subset)) {
                return result = String(subset)
            }
            return
        }

        backtrack(i: i + 1)

        subset[i] = "1"
        backtrack(i: i + 1)
    }
    backtrack(i: 0)
    return result
}


let result = findDifferentBinaryString(["01","10"]) // "11" or "00"
print(result)
