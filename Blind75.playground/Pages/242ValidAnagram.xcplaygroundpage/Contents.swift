import Foundation

/*
## 242. Valid Anagram
 https://leetcode.com/problems/valid-anagram/description/

 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true

 Example 2:
 Input: s = "rat", t = "car"
 Output: false
 */

//func isAnagram(_ s: String, _ t: String) -> Bool {
//    guard s.count == t.count else { return false }
//    var s = Array(s).sorted()
//    var t = Array(t).sorted()
//    return s == t
//}

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    var countDict = [Character: Int]()
    for c in s {
        countDict[c, default: 0] += 1
    }
    for c in t {
        if let found = countDict[c], found != 0 {
            countDict[c]! -= 1
        } else {
            return false
        }
    }
    return countDict.values.allSatisfy( { $0 == 0 })
}

//func isAnagram(_ s: String, _ t: String) -> Bool {
//    guard s.count == t.count else { return false }
//    let s = Array(s)
//    let t = Array(t)
//    var countDictS = [Character: Int]()
//    var countDictT = [Character: Int]()
//    for i in 0..<s.count {
//        countDictS[s[i], default: 0] += 1
//        countDictT[t[i], default: 0] += 1
//    }
//    return countDictS == countDictT
//}

let result = isAnagram("anagram", "nagaram")
print(result)

let result1 = isAnagram("rat", "car")
print(result1)
