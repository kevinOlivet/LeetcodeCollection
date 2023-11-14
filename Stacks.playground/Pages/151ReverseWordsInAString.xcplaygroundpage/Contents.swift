import Foundation

/*
 151. Reverse Words in a String
 https://leetcode.com/problems/reverse-words-in-a-string/description/
 Not a stack :)

 Given an input string s, reverse the order of the words.

 A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

 Return a string of the words in reverse order concatenated by a single space.

 Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

 Example 1:
 Input: s = "the sky is blue"
 Output: "blue is sky the"

 Example 2:
 Input: s = "  hello world  "
 Output: "world hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.

 Example 3:
 Input: s = "a good   example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.
 */


func reverseWords(_ s: String) -> String {
    var result = [String]()
    var stringArray = s.components(separatedBy: " ").reversed()
    for word in stringArray {
        if !word.isEmpty {
            result.append(word)
        }
    }
    return result.joined(separator: " ")
}

let result = reverseWords("the sky is blue") // "blue is sky the"
print(result)

let result1 = reverseWords("  hello world  ") // "world hello"
print(result1)

let result2 = reverseWords("a good   example") // "example good a"
print(result2)
