import Foundation

// https://leetcode.com/problems/find-unique-binary-string/description/

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
