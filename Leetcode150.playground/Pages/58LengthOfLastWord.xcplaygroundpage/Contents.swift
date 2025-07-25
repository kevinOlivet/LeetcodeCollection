import Foundation

/*
 ## 58. Length of Last Word
 https://leetcode.com/problems/length-of-last-word/description/?envType=study-plan-v2&envId=top-interview-150

 Given a string s consisting of words and spaces, return the length of the last word in the string.
 A word is a maximal substring consisting of non-space characters only.

 Example 1:
 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.

 Example 2:
 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.

 Example 3:
 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.
 */

func lengthOfLastWord(_ s: String) -> Int {
    let s = Array(s)
    var i = s.count - 1
    var length = 0
    while s[i] == " " {
        i -= 1
    }
    while i >= 0 && s[i] != " " {
        length += 1
        i -= 1
    }
    return length
}

let result = lengthOfLastWord("Hello World") // 5
print(result)

let result1 = lengthOfLastWord("   fly me   to   the moon  ") // 4
print(result1)

let result2 = lengthOfLastWord("luffy is still joyboy") // 6
print(result2)
