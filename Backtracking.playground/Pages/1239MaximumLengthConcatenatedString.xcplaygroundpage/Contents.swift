import Foundation

/*
 1239. Maximum Length of a Concatenated String with Unique Characters
 https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/

 You are given an array of strings arr. A string s is formed by the concatenation of a subsequence of arr that has unique characters.

 Return the maximum possible length of s.

 A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.

 Example 1:
 Input: arr = ["un","iq","ue"]
 Output: 4
 Explanation: All the valid concatenations are:
 - ""
 - "un"
 - "iq"
 - "ue"
 - "uniq" ("un" + "iq")
 - "ique" ("iq" + "ue")
 Maximum length is 4.

 Example 2:
 Input: arr = ["cha","r","act","ers"]
 Output: 6
 Explanation: Possible longest valid concatenations are "chaers" ("cha" + "ers") and "acters" ("act" + "ers").

 Example 3:
 Input: arr = ["abcdefghijklmnopqrstuvwxyz"]
 Output: 26
 Explanation: The only string in arr has all 26 characters.
 */

func maxLength(_ arr: [String]) -> Int {
    var charSet = Set<Character>()

    func overlap(s: String) -> Bool {
        // use to check for cases like "aa" or "bb"
        var prev = Set<Character>()
        for c in s {
            if charSet.contains(c) || prev.contains(c) {
                return true
            }
            prev.insert(c)
        }
        return false
    }

    func backtrack(i: Int) -> Int {
        if i >= arr.count {
            return charSet.count
        }

        var result = 0

        if !overlap(s: arr[i]) {
            for c in arr[i] {
                charSet.insert(c)
            }
            result = backtrack(i: i + 1)
            for c in arr[i] {
                charSet.remove(c)
            }
        }
        return max(result, backtrack(i: i + 1))
    }
    return backtrack(i: 0)
}

let result = maxLength(["un","iq","ue"]) //  - "uniq" ("un" + "iq") = Maximum length is 4.
print(result)

let result1 = maxLength(["cha","r","act","ers"]) //  - "chaers" ("cha" + "ers"). = Maximum length is 6.
print(result1)

let result2 = maxLength(["aa","bb"]) //  - Maximum length is 0.
print(result2)

let result3 = maxLength(["abcdefghijklm","bcdefghijklmn","cdefghijklmno","defghijklmnop","efghijklmnopq","fghijklmnopqr","ghijklmnopqrs","hijklmnopqrst","ijklmnopqrstu","jklmnopqrstuv","klmnopqrstuvw","lmnopqrstuvwx","mnopqrstuvwxy","nopqrstuvwxyz","opqrstuvwxyza","pqrstuvwxyzab"]) //  - Maximum length is 26.
print(result3)
