import Foundation

/*
 ## 14. Longest Common Prefix
 https://leetcode.com/problems/longest-common-prefix/description/?envType=study-plan-v2&envId=top-interview-150

 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

 Example 1:
 Input: strs = ["flower","flow","flight"]
 Output: "fl"

 Example 2:
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

func longestCommonPrefix(_ strs: [String]) -> String {

    var prefix = strs[0]

    for str in strs {
        while !str.hasPrefix(prefix) {
            prefix = String(prefix.dropLast())

            if prefix.isEmpty {
                return ""
            }
        }
    }

    return prefix
}

let result = longestCommonPrefix( ["flower","flow","flight"]) // "fl"
print(result)

let result1 = longestCommonPrefix(["dog","racecar","car"]) // ""
print(result1)
