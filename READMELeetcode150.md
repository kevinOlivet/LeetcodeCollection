# LeetcodeCollection: Leetcode 150
Algorithms not covered elsewhere in the Neetcode 150

  ## 274. H-Index
 https://leetcode.com/problems/h-index/description/

 Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper, return the researcher's h-index.

 According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.

 Example 1:
 Input: citations = [3,0,6,1,5]
 Output: 3
 Explanation: [3,0,6,1,5] means the researcher has 5 papers in total and each of them had received 3, 0, 6, 1, 5 citations respectively.
 Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.

 Example 2:
 Input: citations = [1,3,1]
 Output: 1

 ## 88. Merge Sorted Array
 https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

 Example 1:
 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

 Example 2:
 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].

 Example 3:
 Input: nums1 = [0], m = 0, nums2 = [1], n = 1
 Output: [1]
 Explanation: The arrays we are merging are [] and [1].
 The result of the merge is [1].
 Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.

 ## 27. Remove Element
 https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.

 Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:

 Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 Custom Judge:

 The judge will test your solution with the following code:

 int[] nums = [...]; // Input array
 int val = ...; // Value to remove
 int[] expectedNums = [...]; // The expected answer with correct length.
                             // It is sorted with no values equaling val.

 int k = removeElement(nums, val); // Calls your implementation

 assert k == expectedNums.length;
 sort(nums, 0, k); // Sort the first k elements of nums
 for (int i = 0; i < actualLength; i++) {
     assert nums[i] == expectedNums[i];
 }
 If all assertions pass, then your solution will be accepted.

 Example 1:
 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 2.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 
 Example 2:
 Input: nums = [0,1,2,2,3,0,4,2], val = 2
 Output: 5, nums = [0,1,4,0,3,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
 Note that the five elements can be returned in any order.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 ## 26. Remove Duplicates from Sorted Array
 https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

 Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

 Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 Custom Judge:

 The judge will test your solution with the following code:

 int[] nums = [...]; // Input array
 int[] expectedNums = [...]; // The expected answer with correct length

 int k = removeDuplicates(nums); // Calls your implementation

 assert k == expectedNums.length;
 for (int i = 0; i < k; i++) {
     assert nums[i] == expectedNums[i];
 }
 If all assertions pass, then your solution will be accepted.

 Example 1:
 Input: nums = [1,1,2]
 Output: 2, nums = [1,2,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 Example 2:
 Input: nums = [0,0,1,1,1,2,2,3,3,4]
 Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 ## 169. Majority Element
 https://leetcode.com/problems/majority-element/description/?envType=study-plan-v2&envId=top-interview-150

 Given an array nums of size n, return the majority element.
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 Example 1:
 Input: nums = [3,2,3]
 Output: 3

 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2

 Constraints:
 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109

 Follow-up: Could you solve the problem in linear time and in O(1) space?

 ## 189. Rotate Array
 https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

 Example 1:
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]

 Example 2:
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]

 Constraints:
 1 <= nums.length <= 105
 -231 <= nums[i] <= 231 - 1
 0 <= k <= 105

 Follow up:

 Try to come up with as many solutions as you can. There are at least three different ways to solve this problem.
 Could you do it in-place with O(1) extra space?

 ## 122. Best Time to Buy and Sell Stock II, Best Time to Buy and Sell Stock 2
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/?envType=study-plan-v2&envId=top-interview-150

 You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

 On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.

 Find and return the maximum profit you can achieve.

 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 Total profit is 4 + 3 = 7.

 Example 2:
 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Total profit is 4.

 Example 3:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: There is no way to make a positive profit, so we never buy the stock to achieve the maximum profit of 0.

 ## 380. Insert Delete GetRandom O(1)
 https://leetcode.com/problems/insert-delete-getrandom-o1/description/?envType=study-plan-v2&envId=top-interview-150

 Implement the RandomizedSet class:

 RandomizedSet() Initializes the RandomizedSet object.
 bool insert(int val) Inserts an item val into the set if not present. Returns true if the item was not present, false otherwise.
 bool remove(int val) Removes an item val from the set if present. Returns true if the item was present, false otherwise.
 int getRandom() Returns a random element from the current set of elements (it's guaranteed that at least one element exists when this method is called). Each element must have the same probability of being returned.
 You must implement the functions of the class such that each function works in average O(1) time complexity.

 Example 1:
 Input
 ["RandomizedSet", "insert", "remove", "insert", "getRandom", "remove", "insert", "getRandom"]
 [[], [1], [2], [2], [], [1], [2], []]
 Output
 [null, true, false, true, 2, true, false, 2]

 Explanation
 RandomizedSet randomizedSet = new RandomizedSet();
 randomizedSet.insert(1); // Inserts 1 to the set. Returns true as 1 was inserted successfully.
 randomizedSet.remove(2); // Returns false as 2 does not exist in the set.
 randomizedSet.insert(2); // Inserts 2 to the set, returns true. Set now contains [1,2].
 randomizedSet.getRandom(); // getRandom() should return either 1 or 2 randomly.
 randomizedSet.remove(1); // Removes 1 from the set, returns true. Set now contains [2].
 randomizedSet.insert(2); // 2 was already in the set, so return false.
 randomizedSet.getRandom(); // Since 2 is the only number in the set, getRandom() will always return 2.

 ## 135. Candy
 https://leetcode.com/problems/candy/description/?envType=study-plan-v2&envId=top-interview-150

 There are n children standing in a line. Each child is assigned a rating value given in the integer array ratings.

 You are giving candies to these children subjected to the following requirements:

 Each child must have at least one candy.
 Children with a higher rating get more candies than their neighbors.
 Return the minimum number of candies you need to have to distribute the candies to the children.

 Example 1:
 Input: ratings = [1,0,2]
 Output: 5
 Explanation: You can allocate to the first, second and third child with 2, 1, 2 candies respectively.

 Example 2:
 Input: ratings = [1,2,2]
 Output: 4
 Explanation: You can allocate to the first, second and third child with 1, 2, 1 candies respectively.
 The third child gets 1 candy because it satisfies the above two conditions.

 ## 13. Roman to Integer
 https://leetcode.com/problems/roman-to-integer/description/?envType=study-plan-v2&envId=top-interview-150

 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given a roman numeral, convert it to an integer.

 Example 1:
 Input: s = "III"
 Output: 3
 Explanation: III = 3.

 Example 2:
 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.

 Example 3:
 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

 ## 12. Integer to Roman
 https://leetcode.com/problems/integer-to-roman/description/?envType=study-plan-v2&envId=top-interview-150

 Seven different symbols represent Roman numerals with the following values:

 Symbol    Value
 I    1
 V    5
 X    10
 L    50
 C    100
 D    500
 M    1000
 Roman numerals are formed by appending the conversions of decimal place values from highest to lowest. Converting a decimal place value into a Roman numeral has the following rules:

 If the value does not start with 4 or 9, select the symbol of the maximal value that can be subtracted from the input, append that symbol to the result, subtract its value, and convert the remainder to a Roman numeral.
 If the value starts with 4 or 9 use the subtractive form representing one symbol subtracted from the following symbol, for example, 4 is 1 (I) less than 5 (V): IV and 9 is 1 (I) less than 10 (X): IX. Only the following subtractive forms are used: 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD) and 900 (CM).
 Only powers of 10 (I, X, C, M) can be appended consecutively at most 3 times to represent multiples of 10. You cannot append 5 (V), 50 (L), or 500 (D) multiple times. If you need to append a symbol 4 times use the subtractive form.
 Given an integer, convert it to a Roman numeral.

 Example 1:
 Input: num = 3749
 Output: "MMMDCCXLIX"
 Explanation:
 3000 = MMM as 1000 (M) + 1000 (M) + 1000 (M)
  700 = DCC as 500 (D) + 100 (C) + 100 (C)
   40 = XL as 10 (X) less of 50 (L)
    9 = IX as 1 (I) less of 10 (X)
 Note: 49 is not 1 (I) less of 50 (L) because the conversion is based on decimal places

 Example 2:
 Input: num = 58
 Output: "LVIII"
 Explanation:
 50 = L
  8 = VIII

 Example 3:
 Input: num = 1994
 Output: "MCMXCIV"
 Explanation:
 1000 = M
  900 = CM
   90 = XC
    4 = IV

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

 ## 14. Longest Common Prefix
 https://leetcode.com/problems/longest-common-prefix/description/?envType=study-plan-v2&envId=top-interview-150

 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

 Example 1:
 Input: strs = ["flower","flow","flight"]
 Output: "fl"

 Example 2:
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.

 ## 6. Zigzag Conversion
 https://leetcode.com/problems/zigzag-conversion/description/?envType=study-plan-v2&envId=top-interview-150

 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"

 Write the code that will take a string and make this conversion given a number of rows:

 string convert(string s, int numRows);

 Example 1:
 Input: s = "PAYPALISHIRING", numRows = 3
 Output: "PAHNAPLSIIGYIR"

 Example 2:
 Input: s = "PAYPALISHIRING", numRows = 4
 Output: "PINALSIGYAHRPI"
 Explanation:
 P     I    N
 A   L S  I G
 Y A   H R
 P     I

 Example 3:
 Input: s = "A", numRows = 1
 Output: "A"

 ## 28. Find the Index of the First Occurrence in a String
 https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/?envType=study-plan-v2&envId=top-interview-150

 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:
 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.

 Example 2:
 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.

 ## 68. Text Justification
 https://leetcode.com/problems/text-justification/description/?envType=study-plan-v2&envId=top-interview-150

 Given an array of strings words and a width maxWidth, format the text such that each line has exactly maxWidth characters and is fully (left and right) justified.

 You should pack your words in a greedy approach; that is, pack as many words as you can in each line. Pad extra spaces ' ' when necessary so that each line has exactly maxWidth characters.

 Extra spaces between words should be distributed as evenly as possible. If the number of spaces on a line does not divide evenly between words, the empty slots on the left will be assigned more spaces than the slots on the right.

 For the last line of text, it should be left-justified, and no extra space is inserted between words.

 Note:

 A word is defined as a character sequence consisting of non-space characters only.
 Each word's length is guaranteed to be greater than 0 and not exceed maxWidth.
 The input array words contains at least one word.

 Example 1:
 Input: words = ["This", "is", "an", "example", "of", "text", "justification."], maxWidth = 16
 Output:
 [
    "This    is    an",
    "example  of text",
    "justification.  "
 ]

 Example 2:
 Input: words = ["What","must","be","acknowledgment","shall","be"], maxWidth = 16
 Output:
 [
   "What   must   be",
   "acknowledgment  ",
   "shall be        "
 ]
 Explanation: Note that the last line is "shall be    " instead of "shall     be", because the last line must be left-justified instead of fully-justified.
 Note that the second line is also left-justified because it contains only one word.

 Example 3:
 Input: words = ["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], maxWidth = 20
 Output:
 [
   "Science  is  what we",
   "understand      well",
   "enough to explain to",
   "a  computer.  Art is",
   "everything  else  we",
   "do                  "
 ]

 ## 392. Is Subsequence
 https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=top-interview-150

 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 Example 1:
 Input: s = "abc", t = "ahbgdc"
 Output: true

 Example 2:
 Input: s = "axc", t = "ahbgdc"
 Output: false

 ## 209. Minimum Size Subarray Sum
 https://leetcode.com/problems/minimum-size-subarray-sum/description/?envType=study-plan-v2&envId=top-interview-150

 Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

 Example 1:
 Input: target = 7, nums = [2,3,1,2,4,3]
 Output: 2
 Explanation: The subarray [4,3] has the minimal length under the problem constraint.

 Example 2:
 Input: target = 4, nums = [1,4,4]
 Output: 1

 Example 3:
 Input: target = 11, nums = [1,1,1,1,1,1,1,1]
 Output: 0

 ## 30. Substring with Concatenation of All Words
 https://leetcode.com/problems/substring-with-concatenation-of-all-words/description/?envType=study-plan-v2&envId=top-interview-150

 You are given a string s and an array of strings words. All the strings of words are of the same length.

 A concatenated string is a string that exactly contains all the strings of any permutation of words concatenated.

 For example, if words = ["ab","cd","ef"], then "abcdef", "abefcd", "cdabef", "cdefab", "efabcd", and "efcdab" are all concatenated strings. "acdbef" is not a concatenated string because it is not the concatenation of any permutation of words.
 Return an array of the starting indices of all the concatenated substrings in s. You can return the answer in any order.


 Example 1:
 Input: s = "barfoothefoobarman", words = ["foo","bar"]
 Output: [0,9]
 Explanation:
 The substring starting at 0 is "barfoo". It is the concatenation of ["bar","foo"] which is a permutation of words.
 The substring starting at 9 is "foobar". It is the concatenation of ["foo","bar"] which is a permutation of words.

 Example 2:
 Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
 Output: []
 Explanation:
 There is no concatenated substring.

 Example 3:
 Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
 Output: [6,9,12]
 Explanation:
 The substring starting at 6 is "foobarthe". It is the concatenation of ["foo","bar","the"].
 The substring starting at 9 is "barthefoo". It is the concatenation of ["bar","the","foo"].
 The substring starting at 12 is "thefoobar". It is the concatenation of ["the","foo","bar"].

 Constraints:

 1 <= s.length <= 104
 1 <= words.length <= 5000
 1 <= words[i].length <= 30
 s and words[i] consist of lowercase English letters.

 ## 472. Concatenated Words
 https://leetcode.com/problems/concatenated-words/description/

 Given an array of strings words (without duplicates), return all the concatenated words in the given list of words.

 A concatenated word is defined as a string that is comprised entirely of at least two shorter words (not necessarily distinct) in the given array.

 Example 1:
 Input: words = ["cat","cats","catsdogcats","dog","dogcatsdog","hippopotamuses","rat","ratcatdogcat"]
 Output: ["catsdogcats","dogcatsdog","ratcatdogcat"]
 Explanation: "catsdogcats" can be concatenated by "cats", "dog" and "cats";
 "dogcatsdog" can be concatenated by "dog", "cats" and "dog";
 "ratcatdogcat" can be concatenated by "rat", "cat", "dog" and "cat".

 Example 2:
 Input: words = ["cat","dog","catdog"]
 Output: ["catdog"]

 Constraints:
 1 <= words.length <= 104
 1 <= words[i].length <= 30
 words[i] consists of only lowercase English letters.
 All the strings of words are unique.
 1 <= sum(words[i].length) <= 105

 ## 289. Game of Life
 https://leetcode.com/problems/game-of-life/description/?envType=study-plan-v2&envId=top-interview-150

 According to Wikipedia's article: "The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."

 The board is made up of an m x n grid of cells, where each cell has an initial state: live (represented by a 1) or dead (represented by a 0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):

 Any live cell with fewer than two live neighbors dies as if caused by under-population.
 Any live cell with two or three live neighbors lives on to the next generation.
 Any live cell with more than three live neighbors dies, as if by over-population.
 Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
 The next state of the board is determined by applying the above rules simultaneously to every cell in the current state of the m x n grid board. In this process, births and deaths occur simultaneously.

 Given the current state of the board, update the board to reflect its next state.

 Note that you do not need to return anything.

 Example 1:
 Input: board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]
 Output: [[0,0,0],[1,0,1],[0,1,1],[0,1,0]]

 Example 2:
 Input: board = [[1,1],[1,0]]
 Output: [[1,1],[1,1]]

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

 ## 290. Word Pattern
 https://leetcode.com/problems/word-pattern/description/?envType=study-plan-v2&envId=top-interview-150

 Given a pattern and a string s, find if s follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s. Specifically:

 Each letter in pattern maps to exactly one unique word in s.
 Each unique word in s maps to exactly one letter in pattern.
 No two letters map to the same word, and no two words map to the same letter.

 Example 1:
 Input: pattern = "abba", s = "dog cat cat dog"
 Output: true
 Explanation:
 The bijection can be established as:
 'a' maps to "dog".
 'b' maps to "cat".

 Example 2:
 Input: pattern = "abba", s = "dog cat cat fish"
 Output: false

 Example 3:
 Input: pattern = "aaaa", s = "dog cat cat dog"
 Output: false

 ## 219. Contains Duplicate II, 219. Contains Duplicate 2
 https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

 Example 1:
 Input: nums = [1,2,3,1], k = 3
 Output: true

 Example 2:
 Input: nums = [1,0,1,1], k = 1
 Output: true

 Example 3:
 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false

 ## 228. Summary Ranges
 https://leetcode.com/problems/summary-ranges/description/?envType=study-plan-v2&envId=top-interview-150

 You are given a sorted unique integer array nums.

 A range [a,b] is the set of all integers from a to b (inclusive).

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b

 Example 1:
 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"

 Example 2:
 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"

 ## 452. Minimum Number of Arrows to Burst Balloons
 https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/description/?envType=study-plan-v2&envId=top-interview-150

 There are some spherical balloons taped onto a flat wall that represents the XY-plane. The balloons are represented as a 2D integer array points where points[i] = [xstart, xend] denotes a balloon whose horizontal diameter stretches between xstart and xend. You do not know the exact y-coordinates of the balloons.

 Arrows can be shot up directly vertically (in the positive y-direction) from different points along the x-axis. A balloon with xstart and xend is burst by an arrow shot at x if xstart <= x <= xend. There is no limit to the number of arrows that can be shot. A shot arrow keeps traveling up infinitely, bursting any balloons in its path.

 Given the array points, return the minimum number of arrows that must be shot to burst all balloons.

 Example 1:
 Input: points = [[10,16],[2,8],[1,6],[7,12]]
 Output: 2
 Explanation: The balloons can be burst by 2 arrows:
 - Shoot an arrow at x = 6, bursting the balloons [2,8] and [1,6].
 - Shoot an arrow at x = 11, bursting the balloons [10,16] and [7,12].

 Example 2:
 Input: points = [[1,2],[3,4],[5,6],[7,8]]
 Output: 4
 Explanation: One arrow needs to be shot for each balloon for a total of 4 arrows.

 Example 3:
 Input: points = [[1,2],[2,3],[3,4],[4,5]]
 Output: 2
 Explanation: The balloons can be burst by 2 arrows:
 - Shoot an arrow at x = 2, bursting the balloons [1,2] and [2,3].
 - Shoot an arrow at x = 4, bursting the balloons [3,4] and [4,5].

 ## 92. Reverse Linked List II, Reverse Linked List 2
 https://leetcode.com/problems/reverse-linked-list-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a singly linked list and two integers left and right where left <= right, reverse the nodes of the list from position left to position right, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5], left = 2, right = 4
 Output: [1,4,3,2,5]

 Example 2:
 Input: head = [5], left = 1, right = 1
 Output: [5]

 ## 82. Remove Duplicates from Sorted List II, Remove Duplicates from Sorted List 2
 https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list. Return the linked list sorted as well.

 Example 1:
 Input: head = [1,2,3,3,4,4,5]
 Output: [1,2,5]

 Example 2:
 Input: head = [1,1,1,2,3]
 Output: [2,3]

 List is sorted

 ## 61. Rotate List
 https://leetcode.com/problems/rotate-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a linked list, rotate the list to the right by k places.

 Example 1:
 Input: head = [1,2,3,4,5], k = 2
 Output: [4,5,1,2,3]

 Example 2:
 Input: head = [0,1,2], k = 4
 Output: [2,0,1]

 ## 86. Partition List
 https://leetcode.com/problems/partition-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

 You should preserve the original relative order of the nodes in each of the two partitions.

 Example 1:
 Input: head = [1,4,3,2,5,2], x = 3
 Output: [1,2,2,4,3,5]

 Example 2:
 Input: head = [2,1], x = 2
 Output: [1,2]

 ## 101. Symmetric Tree
 https://leetcode.com/problems/symmetric-tree/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

 Example 1:
 Input: root = [1,2,2,3,4,4,3]
 Output: true

 Example 2:
 Input: root = [1,2,2,null,3,null,3]
 Output: false

 ## 106. Construct Binary Tree from Inorder and Postorder Traversal
 https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/description/?envType=study-plan-v2&envId=top-interview-150

 Given two integer arrays inorder and postorder where inorder is the inorder traversal of a binary tree and postorder is the postorder traversal of the same tree, construct and return the binary tree.

 Example 1:
 Input: inorder = [9,3,15,20,7], postorder = [9,15,7,20,3]
 Output: [3,9,20,null,null,15,7]

 Example 2:
 Input: inorder = [-1], postorder = [-1]
 Output: [-1]

 ## 117. Populating Next Right Pointers in Each Node II, Populating Next Right Pointers in Each Node 2
 also works for Populating Next Right Pointers in Each Node
 https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given a binary tree

 struct Node {
   int val;
   Node *left;
   Node *right;
   Node *next;
 }
 Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL.

 Initially, all next pointers are set to NULL.

 Example 1:
 Input: root = [1,2,3,4,5,null,7]
 Output: [1,#,2,3,#,4,5,7,#]
 Explanation: Given the above binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.

 Example 2:
 Input: root = []
 Output: []

 ## 114. Flatten Binary Tree to Linked List
 https://leetcode.com/problems/flatten-binary-tree-to-linked-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree, flatten the tree into a "linked list":

 The "linked list" should use the same TreeNode class where the right child pointer points to the next node in the list and the left child pointer is always null.
 The "linked list" should be in the same order as a pre-order traversal of the binary tree.

 Example 1:
 Input: root = [1,2,5,3,4,null,6]
 Output: [1,null,2,null,3,null,4,null,5,null,6]

 Example 2:
 Input: root = []
 Output: []

 Example 3:
 Input: root = [0]
 Output: [0]
