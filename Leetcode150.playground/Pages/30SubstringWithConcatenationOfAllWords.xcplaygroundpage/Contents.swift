import Foundation

/*
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
 */

func findSubstring(_ s: String, _ words: [String]) -> [Int] {
    // Get the length of each word.
    guard let wordLength = words.first?.count else { return [] }

    // Convert the input string into an array of characters for easier indexing.
    let sArray = Array(s)

    // Create a set of all unique words for quick lookup.
    let allWords: Set<String> = Set(words)

    // Create a dictionary to count occurrences of each word in the input list.
    var expectedWordCount: [String: Int] = [:]
    for word in words {
        expectedWordCount[word, default: 0] += 1
    }

    // Array to store the starting indices of found substrings.
    var results: [Int] = []

    // Check each possible starting position with offsets from 0 to the length of the word.
    for offset in 0..<wordLength {
        var remainingWordsCount = expectedWordCount
        var lhs = offset
        var rhs = lhs

        // Move the rhs pointer until it exceeds the bounds of the string.
        while rhs + wordLength <= sArray.count {
            let currentWord = String(sArray[rhs..<rhs + wordLength])

            // Check if the current word is one we are looking for.
            if let count = remainingWordsCount[currentWord] {
                // Decrease the count of the word in the dictionary.
                remainingWordsCount[currentWord] = (count > 1) ? count - 1 : nil
                rhs += wordLength // Move the rhs pointer forward by the length of the word.
            } else {
                // If the current word is not found, shift the lhs pointer.
                let lhsWord = String(sArray[lhs..<lhs + wordLength])

                // If the lhs word is part of the initial words, add it back to the dictionary.
                if allWords.contains(lhsWord) {
                    remainingWordsCount[lhsWord, default: 0] += 1
                }
                lhs += wordLength // Move the lhs pointer forward by the length of the word.
                // Ensure the rhs pointer does not fall behind the lhs pointer.
                rhs = max(lhs, rhs)
            }

            // If all words have been matched, record the starting index.
            if remainingWordsCount.isEmpty {
                results.append(lhs)
            }
        }
    }

    return results // Return all found starting indices.
}

let result = findSubstring("barfoothefoobarman", ["foo","bar"]) // [0,9]
print(result)

let result1 = findSubstring("wordgoodgoodgoodbestword", ["word","good","best","word"]) // []
print(result1)

let result2 = findSubstring("barfoofoobarthefoobarman", ["bar","foo","the"]) // [6,9,12]
print(result2)
