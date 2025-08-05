import Foundation

/*
 ## 205. Isomorphic Strings
 https://leetcode.com/problems/isomorphic-strings/description/?envType=study-plan-v2&envId=top-interview-150

 Given two strings s and t, determine if they are isomorphic.

 Two strings s and t are isomorphic if the characters in s can be replaced to get t.

 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

 Example 1:
 Input: s = "egg", t = "add"
 Output: true
 Explanation:
 The strings s and t can be made identical by:
 Mapping 'e' to 'a'.
 Mapping 'g' to 'd'.

 Example 2:
 Input: s = "foo", t = "bar"
 Output: false
 Explanation:
 The strings s and t can not be made identical as 'o' needs to be mapped to both 'a' and 'r'.

 Example 3:
 Input: s = "paper", t = "title"
 Output: true
 */

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var mapST = [Character: Character]()
    var mapTS = [Character: Character]()

    for (c1, c2) in zip(s, t) {
        if (mapST.keys.contains(c1) && mapST[c1]! != c2) ||
            (mapTS.keys.contains(c2) && mapTS[c2]! != c1) {
                return false
            }
        mapST[c1] = c2
        mapTS[c2] = c1
    }
    return true

    // OR
//    let s = Array(s)
//    let t = Array(t)
//    var mapST = [Character: Character]()
//    var mapTS = [Character: Character]()
//
//    for (c1, c2) in zip(s, t) {
//        mapST[c1] = c2
//        mapTS[c2] = c1
//    }
//    for i in 0..<s.count {
//        if mapST[s[i]]! != t[i] {
//            return false
//        }
//        if mapTS[t[i]]! != s[i] {
//            return false
//        }
//    }
//    return true
}

let result = isIsomorphic("egg", "add") // true
print(result)

let result1 = isIsomorphic("foo", "bar") // false
print(result1)

let result2 = isIsomorphic("paper", "title") // true
print(result2)
