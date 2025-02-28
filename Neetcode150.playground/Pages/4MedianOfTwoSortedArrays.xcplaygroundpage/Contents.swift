import Foundation

/*
 ## 4. Median of Two Sorted Arrays
 https://leetcode.com/problems/median-of-two-sorted-arrays/description/

 NOTE: binary search didn't work, but O(m + n) works

 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

 Example 1:
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.

 Example 2:
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 */

//  NOTE: binary search didn't work, but O(m + n) works
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

    let mergedAndSorted = (nums1 + nums2).sorted()
    if mergedAndSorted.count % 2 == 0 {
        let total = mergedAndSorted[mergedAndSorted.count/2] + mergedAndSorted[(mergedAndSorted.count/2) - 1]
        return Double(total) / 2
    } else {
        return Double(mergedAndSorted[mergedAndSorted.count/2])
    }

//    // Didn't work
//    var A = nums1
//    var B = nums2
//    let total = A.count + B.count
//    let half = total / 2
//
//    if A.count > B.count {
//        (A, B) = (B, A)
//        var l = 0
//        var r = A.count - 1
//
//        while l <= r {
//            let i = (l + r) / 2 // A
//            let j = half - i - 2 // B
//
//            let Aleft = i >= 0 ? A[i] : -Int.max
//            let Aright = i + 1 < A.count ? A[i + 1] : Int.max
//            let Bleft = j >= 0 ? B[j] : -Int.max
//            let Bright = j + 1 < B.count ? B[j + 1] : Int.max
//
//            // partition is correct
//            if Aleft <= Bright && Bleft <= Aright {
//                // odd
//                if total % 2 == 0 {
//                    return Double(min(Aright, Bright))
//                } else {
//                    return Double(max(Aleft, Bleft)) + Double(min(Aright, Bright)) / 2
//                }
//            } else if Aleft > Bright {
//                r = i - 1
//            } else {
//                l = i + 1
//            }
//        }
//    }
//    return 0.0
}

let result = findMedianSortedArrays([1,3], [2]) // 2.00000
print(result)

let result1 = findMedianSortedArrays([1,2], [3,4]) // 2.50000
print(result1)
