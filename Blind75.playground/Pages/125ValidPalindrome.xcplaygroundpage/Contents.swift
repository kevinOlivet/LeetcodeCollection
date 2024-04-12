import Foundation

/*
 ## 125. Valid Palindrome
 https://leetcode.com/problems/valid-palindrome/description/

 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
 */

// WORKS
//func isPalindrome(_ s: String) -> Bool {
//
//    let set = Set("abcdefghijklmnopqrstuvwxyz0123456789")
//
//    var cleanS = [Character]()
//    for c in s where set.contains(c.lowercased()) {
//        cleanS.append(Character(c.lowercased()))
//    }
//    return cleanS == cleanS.reversed()
//}

// Two Pointers
func isPalindrome(_ s: String) -> Bool {
    let s = Array(s)

    let set = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
    var left = 0
    var right = s.count - 1

    while left < right {

        while left < right && !set.contains(s[left]) {
            left += 1
        }
        while right > left && !set.contains(s[right]) {
            right -= 1
        }

        if s[left].lowercased() != s[right].lowercased() { return false }
        left += 1
        right -= 1

    }
    return true
}

let result = isPalindrome("A man, a plan, a canal: Panama") // true
print(result)

let result1 = isPalindrome("race a car") // false
print(result1)

let result2 = isPalindrome(" ") // true
print(result2)

let result3 = isPalindrome("0P") // false
print(result3)
