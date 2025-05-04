import Foundation

/*
 ## 846. Hand of Straights
 https://leetcode.com/problems/hand-of-straights/description/

 Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.

 Given an integer array hand where hand[i] is the value written on the ith card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.

 Example 1:
 Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
 Output: true
 Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]

 Example 2:
 Input: hand = [1,2,3,4,5], groupSize = 4
 Output: false
 Explanation: Alice's hand can not be rearranged into groups of 4.
 */

func isNStraightHand(hand: [Int], groupSize: Int) -> Bool {

    if hand.count % groupSize != 0 { return false }
    var countDict = [Int: Int]()
    for n in hand {
        countDict[n, default: 0] += 1
    }

    var sortedKeys = countDict.keys.sorted(by: >)

    while let minValue = sortedKeys.last {
        for i in minValue..<minValue + groupSize {
            if let found = countDict[i], found > 0 {
                countDict[i]! -= 1
            } else {
                return false
            }
            if countDict[i]! == 0 {
                sortedKeys.popLast()
            }
        }
    }
    return true
}

let result = isNStraightHand([1,2,3,6,2,3,4,7,8], 3) // true
print(result)

let result1 = isNStraightHand([1,2,3,4,5], 4) // false
print(result1)
