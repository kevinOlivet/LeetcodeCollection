import Foundation

/*
 892 · Alien Dictionary
 https://www.lintcode.com/problem/892/

 NOTE: This is a premium leetcode problem so I'm using lintcode instead

 There is a new alien language which uses the latin alphabet. However, the order among letters are unknown to you. You receive a list of non-empty words from the dictionary, where words are sorted lexicographically by the rules of this new language. Derive the order of letters in this language.
 You may assume all letters are in lowercase.
 The dictionary is invalid, if string a is prefix of string b and b is appear before a.
 If the order is invalid, return an empty string.
 There may be multiple valid order of letters, return the smallest in normal lexicographical order.
 The letters in one string are of the same rank by default and are sorted in Human dictionary order.

 Example 1:
 Input：["wrt","wrf","er","ett","rftt"]
 Output："wertf"
 Explanation：
 from "wrt"and"wrf" ,we can get 't'<'f'
 from "wrt"and"er" ,we can get 'w'<'e'
 from "er"and"ett" ,we can get 'r'<'t'
 from "ett"and"rftt" ,we can get 'e'<'r'
 So return "wertf"

 Example 2:
 Input：["z","x"]
 Output："zx"
 Explanation：
 from "z" and "x"，we can get 'z' < 'x'
 So return "zx"
 */

func alienOrder(_ words: [String]) -> String {
    // Write your code here

}

let result = alienOrder(["wrt","wrf","er","ett","rftt"]) // "wertf"
print(result)

let result1 = alienOrder(["z","x"]) // "zx"
print(result1)
