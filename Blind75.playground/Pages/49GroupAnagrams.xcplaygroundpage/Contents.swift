import Foundation

/*
 ## 49. Group Anagrams
 https://leetcode.com/problems/group-anagrams/description/
 // NOTE: quick way to map letters to an array index!!

 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Example 2:
 Input: strs = [""]
 Output: [[""]]

 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]
 */

//func groupAnagrams(_ strs: [String]) -> [[String]] {
//    var result = [[Int]: [String]]()
//
//    for s in strs {
//        var countDict = Array(repeating: 0, count: 26)
//        for c in s {
//            // Get the index in the array by subtracting the ascii value for "a" (97) from the ascii value of the character
//            // Example: "a".asciiValue - 97 = index 0, "b".asciiValue - 97 = index 1 etc
//            // NOTE: quick way to map letters to an array index!!
//            // a = 97, b = 98, c = 99, A = 65, B = 66
////            let index = Int(char.asciiValue! - 97)
//            let index = Int(c.asciiValue! - Character("a").asciiValue!)
//            countDict[index] += 1
//        }
//        result[countDict, default: []].append(s)
//    }
//    return Array(result.values)
//}

// This also works. Swift can use a Dictionary as a key
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var result = [[Character: Int]: [String]]()
    for s in strs {
        var countDict = [Character: Int]()
        for c in s {
            countDict[c, default: 0] += 1
        }
        result[countDict, default: []].append(s)
    }
    return Array(result.values)
}

let result = groupAnagrams(["eat","tea","tan","ate","nat","bat"]) // [["bat"],["nat","tan"],["ate","eat","tea"]]
print(result)

let result1 = groupAnagrams([""]) // [[""]]
print(result1)

let result2 = groupAnagrams(["a"]) // [["a"]]
print(result2)

let char: Character = "B"
print(Int(char.asciiValue!))
