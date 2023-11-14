import Foundation

/*
 https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/description/

 1209. Remove All Adjacent Duplicates in String II

 You are given a string s and an integer k, a k duplicate removal consists of choosing k adjacent and equal letters from s and removing them, causing the left and the right side of the deleted substring to concatenate together.

 We repeatedly make k duplicate removals on s until we no longer can.

 Return the final string after all such duplicate removals have been made. It is guaranteed that the answer is unique.

 Example 1:
 Input: s = "abcd", k = 2
 Output: "abcd"
 Explanation: There's nothing to delete.

 Example 2:
 Input: s = "deeedbbcccbdaa", k = 3
 Output: "aa"
 Explanation:
 First delete "eee" and "ccc", get "ddbbbdaa"
 Then delete "bbb", get "dddaa"
 Finally delete "ddd", get "aa"

 Example 3:
 Input: s = "pbbcggttciiippooaais", k = 2
 Output: "ps"
 */

func removeDuplicates(_ s: String, _ k: Int) -> String {

    var stack = [(Character, Int)]()

    for c in s {
        if !stack.isEmpty && stack.last!.0 == c {
            stack[stack.count - 1].1 += 1
        } else {
            stack.append((c, 1))
        }

        if stack.last!.1 == k {
            stack.popLast()
        }
    }

    var result = ""

    for (char, charCount) in stack {
        for _ in 0..<charCount {
            result.append(String(char))
        }
    }
    return result
}

let result = removeDuplicates("abcd", 2) // "abcd"
print(result)

let result1 = removeDuplicates("deeedbbcccbdaa", 3) // "aa"
print(result1)

let result2 = removeDuplicates("pbbcggttciiippooaais", 2) // "ps"
print(result2)
