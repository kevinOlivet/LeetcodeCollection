# LeetcodeCollection: Backtracking

 ## 51. N-Queens
 https://leetcode.com/problems/n-queens/description/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

 Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.

 Example 1:
 Input: n = 4
 Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
 Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above

 Example 2:
 Input: n = 1
 Output: [["Q"]]
 
  ## 52. N-Queens II
 https://leetcode.com/problems/n-queens-ii/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return the number of distinct solutions to the n-queens puzzle.

 Example 1:
 Input: n = 4
 Output: 2
 Explanation: There are two distinct solutions to the 4-queens puzzle as shown.

 Example 2:
 Input: n = 1
 Output: 1

 ## 79. Word Search
 https://leetcode.com/problems/word-search/

 Given an m x n grid of characters board and a string word, return true if word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example 1:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true

 Example 2:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true

 Example 3:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false

 ## 212. Word Search II, Word Search 2
 https://leetcode.com/problems/word-search-ii/description/

// Times out

 Given an m x n board of characters and a list of strings words, return all words on the board.

 Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.

 Example 1:
 Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
 Output: ["eat","oath"]

 Example 2:
 Input: board = [["a","b"],["c","d"]], words = ["abcb"]
 Output: []

 ## 46. Permutations
 https://leetcode.com/problems/permutations/description/

 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 Example 2:
 Input: nums = [0,1]
 Output: [[0,1],[1,0]]

 Example 3:
 Input: nums = [1]
 Output: [[1]]

 ## 80. Remove Duplicates from Sorted Array II
 https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/

 Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:
 Input: nums = [1,1,1,2,2,3]
 Output: 5, nums = [1,1,2,2,3,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 Example 2:
 Input: nums = [0,0,1,1,1,1,2,3,3]
 Output: 7, nums = [0,0,1,1,2,3,3,_,_]
 Explanation: Your function should return k = 7, with the first seven elements of nums being 0, 0, 1, 1, 2, 3 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 ## 34. Find First and Last Position of Element in Sorted Array
 https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/
// Doesn't work for small arrays

 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

 If target is not found in the array, return [-1, -1].

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [5,7,7,8,8,10], target = 8
 Output: [3,4]

 Example 2:
 Input: nums = [5,7,7,8,8,10], target = 6
 Output: [-1,-1]

 Example 3:
 Input: nums = [], target = 0
 Output: [-1,-1]

 ## 17. Letter Combinations of a Phone Number
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/

 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

 A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

 Example 1:
 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

 Example 2:
 Input: digits = ""
 Output: []

 Example 3:
 Input: digits = "2"
 Output: ["a","b","c"]

 ## 39. Combination Sum
 https://leetcode.com/problems/combination-sum/description/

 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the
 frequency
  of at least one of the chosen numbers is different.

 The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

 Example 1:
 Input: candidates = [2,3,6,7], target = 7
 Output: [[2,2,3],[7]]
 Explanation:
 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
 7 is a candidate, and 7 = 7.
 These are the only two combinations.

 Example 2:
 Input: candidates = [2,3,5], target = 8
 Output: [[2,2,2,2],[2,3,3],[3,5]]

 Example 3:
 Input: candidates = [2], target = 1
 Output: []

 ## 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]

 ## 40. Combination Sum II, Combination Sum 2
 https://leetcode.com/problems/combination-sum-ii/

 Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.

 Each number in candidates may only be used once in the combination.

 Note: The solution set must not contain duplicate combinations.

 Example 1:
 Input: candidates = [10,1,2,7,6,1,5], target = 8
 Output:
 [
 [1,1,6],
 [1,2,5],
 [1,7],
 [2,6]
 ]

 Example 2:
 Input: candidates = [2,5,2,1,2], target = 5
 Output:
 [
 [1,2,2],
 [5]
 ]

 ## 90. Subsets II, Subsets 2
 https://leetcode.com/problems/subsets-ii/

 Given an integer array nums that may contain duplicates, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,2]
 Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 ## 77. Combinations
 https://leetcode.com/problems/combinations/

 Given two integers n and k, return all possible combinations of k numbers chosen from the range [1, n].

 You may return the answer in any order.

 Example 1:
 Input: n = 4, k = 2
 Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
 Explanation: There are 4 choose 2 = 6 total combinations.
 Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.

 Example 2:
 Input: n = 1, k = 1
 Output: [[1]]
 Explanation: There is 1 choose 1 = 1 total combination.

 ## 131. Palindrome Partitioning
 https://leetcode.com/problems/palindrome-partitioning/

 Given a string s, partition s such that every
 substring
  of the partition is a
 palindrome
 . Return all possible palindrome partitioning of s.

 Example 1:
 Input: s = "aab"
 Output: [["a","a","b"],["aa","b"]]

 Example 2:
 Input: s = "a"
 Output: [["a"]]

 ## 132. Palindrome Partitioning II
 https://leetcode.com/problems/palindrome-partitioning-ii/

 Given a string s, partition s such that every
 substring
  of the partition is a
 palindrome

 Return the minimum cuts needed for a palindrome partitioning of s.

 Example 1:
 Input: s = "aab"
 Output: 1
 Explanation: The palindrome partitioning ["aa","b"] could be produced using 1 cut.

 Example 2:
 Input: s = "a"
 Output: 0

 Example 3:
 Input: s = "ab"
 Output: 1

 ## 2472. Maximum Number of Non-overlapping Palindrome Substrings
 https://leetcode.com/problems/maximum-number-of-non-overlapping-palindrome-substrings/description/
// Times out on larger strings

 You are given a string s and a positive integer k.

 Select a set of non-overlapping substrings from the string s that satisfy the following conditions:

 The length of each substring is at least k.
 Each substring is a palindrome.
 Return the maximum number of substrings in an optimal selection.

 A substring is a contiguous sequence of characters within a string.

 Example 1:
 Input: s = "abaccdbbd", k = 3
 Output: 2
 Explanation: We can select the substrings underlined in s = "abaccdbbd". Both "aba" and "dbbd" are palindromes and have a length of at least k = 3.
 It can be shown that we cannot find a selection with more than two valid substrings.
 
 Example 2:
 Input: s = "adbcda", k = 2
 Output: 0
 Explanation: There is no palindrome substring of length at least 2 in the string.

 1980. Find Unique Binary String
 https://leetcode.com/problems/find-unique-binary-string/description/

 Given an array of strings nums containing n unique binary strings each of length n, return a binary string of length n that does not appear in nums. If there are multiple answers, you may return any of them.

 Example 1:
 Input: nums = ["01","10"]
 Output: "11"
 Explanation: "11" does not appear in nums. "00" would also be correct.

 Example 2:
 Input: nums = ["00","01"]
 Output: "11"
 Explanation: "11" does not appear in nums. "10" would also be correct.

 Example 3:
 Input: nums = ["111","011","001"]
 Output: "101"
 Explanation: "101" does not appear in nums. "000", "010", "100", and "110" would also be correct.

 ## 1239. Maximum Length of a Concatenated String with Unique Characters
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

 ## 93. Restore IP Addresses
 https://leetcode.com/problems/restore-ip-addresses/

 A valid IP address consists of exactly four integers separated by single dots. Each integer is between 0 and 255 (inclusive) and cannot have leading zeros.

 For example, "0.1.2.201" and "192.168.1.1" are valid IP addresses, but "0.011.255.245", "192.168.1.312" and "192.168@1.1" are invalid IP addresses.
 Given a string s containing only digits, return all possible valid IP addresses that can be formed by inserting dots into s. You are not allowed to reorder or remove any digits in s. You may return the valid IP addresses in any order.

 Example 1:
 Input: s = "25525511135"
 Output: ["255.255.11.135","255.255.111.35"]

 Example 2:
 Input: s = "0000"
 Output: ["0.0.0.0"]

 Example 3:
 Input: s = "101023"
 Output: ["1.0.10.23","1.0.102.3","10.1.0.23","10.10.2.3","101.0.2.3"]

 ## 698. Partition to K Equal Sum Subsets
https://leetcode.com/problems/partition-to-k-equal-sum-subsets/

Given an integer array nums and an integer k, return true if it is possible to divide this array into k non-empty subsets whose sums are all equal.

Example 1:
Input: nums = [4,3,2,3,5,2,1], k = 4
Output: true
Explanation: It is possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.

Example 2:
Input: nums = [1,2,3,4], k = 3
Output: false

 ## 473. Matchsticks to Square
 https://leetcode.com/problems/matchsticks-to-square/

 You are given an integer array matchsticks where matchsticks[i] is the length of the ith matchstick.
 You want to use all the matchsticks to make one square.
 You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.

 Return true if you can make this square and false otherwise.

 Example: 1
 Input: matchsticks = [1,1,2,2,2]
 Output: true
 Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.

 Example 2:
 Input: matchsticks = [3,3,3,3,4]
 Output: false
 Explanation: You cannot find a way to form a square with all the matchsticks.

 ## 332. Reconstruct Itinerary
 https://leetcode.com/problems/reconstruct-itinerary/

 You are given a list of airline tickets where tickets[i] = [fromi, toi] represent the departure and the arrival airports of one flight. Reconstruct the itinerary in order and return it.

 All of the tickets belong to a man who departs from "JFK", thus, the itinerary must begin with "JFK". If there are multiple valid itineraries, you should return the itinerary that has the smallest lexical order when read as a single string.

 For example, the itinerary ["JFK", "LGA"] has a smaller lexical order than ["JFK", "LGB"].
 You may assume all tickets form at least one valid itinerary. You must use all the tickets once and only once.

 Example 1:
 Input: tickets = [["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]
 Output: ["JFK","MUC","LHR","SFO","SJC"]

 Example 2:
 Input: tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
 Output: ["JFK","ATL","JFK","SFO","ATL","SFO"]
 Explanation: Another possible reconstruction is ["JFK","SFO","ATL","JFK","ATL","SFO"] but it is larger in lexical order.

 ## 78. Subsets
 https://leetcode.com/problems/subsets/

 Given an integer array nums of unique elements, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 ## 47. Permutations II
 https://leetcode.com/problems/permutations-ii/description/

 Given a collection of numbers, nums, that might contain duplicates, return all possible unique permutations in any order.

 Example 1:
 Input: nums = [1,1,2]
 Output:
 [[1,1,2],
 [1,2,1],
 [2,1,1]]

 Example 2:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 ## 50. Pow(x, n)
 https://leetcode.com/problems/powx-n/

 Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

 Example 1:
 Input: x = 2.00000, n = 10
 Output: 1024.00000

 Example 2:
 Input: x = 2.10000, n = 3
 Output: 9.26100

 Example 3:
 Input: x = 2.00000, n = -2
 Output: 0.25000
 Explanation: 2-2 = 1/22 = 1/4 = 0.25

 ## 1780. Check if Number is a Sum of Powers of Three
 https://leetcode.com/problems/check-if-number-is-a-sum-of-powers-of-three/description/

 Given an integer n, return true if it is possible to represent n as the sum of distinct powers of three. Otherwise, return false.

 An integer y is a power of three if there exists an integer x such that y == 3x.

 Example 1:
 Input: n = 12
 Output: true
 Explanation: 12 = 31 + 32

 Example 2:
 Input: n = 91
 Output: true
 Explanation: 91 = 30 + 32 + 34

 Example 3:
 Input: n = 21
 Output: false

 ## 1849. Splitting a String Into Descending Consecutive Values
 https://leetcode.com/problems/splitting-a-string-into-descending-consecutive-values/description/

 You are given a string s that consists of only digits.

 Check if we can split s into two or more non-empty substrings such that the numerical values of the substrings are in descending order and the difference between numerical values of every two adjacent substrings is equal to 1.

 For example, the string s = "0090089" can be split into ["0090", "089"] with numerical values [90,89]. The values are in descending order and adjacent values differ by 1, so this way is valid.
 Another example, the string s = "001" can be split into ["0", "01"], ["00", "1"], or ["0", "0", "1"]. However all the ways are invalid because they have numerical values [0,1], [0,1], and [0,0,1] respectively, all of which are not in descending order.
 Return true if it is possible to split s​​​​​​ as described above, or false otherwise.

 A substring is a contiguous sequence of characters in a string.

 Example 1:
 Input: s = "1234"
 Output: false
 Explanation: There is no valid way to split s.

 Example 2:
 Input: s = "050043"
 Output: true
 Explanation: s can be split into ["05", "004", "3"] with numerical values [5,4,3].
 The values are in descending order with adjacent values differing by 1.

 Example 3:
 Input: s = "9080701"
 Output: false
 Explanation: There is no valid way to split s.
