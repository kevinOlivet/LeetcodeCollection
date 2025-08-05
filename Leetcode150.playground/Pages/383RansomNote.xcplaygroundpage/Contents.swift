import Foundation

/*
 ## 383. Ransom Note
 https://leetcode.com/problems/ransom-note/description/?envType=study-plan-v2&envId=top-interview-150

 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

 Example 1:
 Input: ransomNote = "a", magazine = "b"
 Output: false

 Example 2:
 Input: ransomNote = "aa", magazine = "ab"
 Output: false

 Example 3:
 Input: ransomNote = "aa", magazine = "aab"
 Output: true

 Constraints:
 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */

func canConstruct(ransomNote: String, magazine: String) -> Bool {
    var countDict = [Character: Int]()
    for c in magazine {
        countDict[c, default: 0] += 1
    }
    for c in ransomNote {
        if let found = countDict[c], found > 0 {
            countDict[c]! -= 1
        } else {
            return false
        }
    }
    return true
}

let result = canConstruct("a", "b") // false
print(result)

let result1 = canConstruct("aa", "ab") // false
print(result1)

let result2 = canConstruct("aa", "aab") // true
print(result2)
