import Foundation

/*
 454. 4Sum II

 https://leetcode.com/problems/4sum-ii/description/

 Given four integer arrays nums1, nums2, nums3, and nums4 all of length n, return the number of tuples (i, j, k, l) such that:

 0 <= i, j, k, l < n
 nums1[i] + nums2[j] + nums3[k] + nums4[l] == 0

 Example 1:
 Input: nums1 = [1,2], nums2 = [-2,-1], nums3 = [-1,2], nums4 = [0,2]
 Output: 2
 Explanation:
 The two tuples are:
 1. (0, 0, 0, 1) -> nums1[0] + nums2[0] + nums3[0] + nums4[1] = 1 + (-2) + (-1) + 2 = 0
 2. (1, 1, 0, 0) -> nums1[1] + nums2[1] + nums3[0] + nums4[0] = 2 + (-1) + (-1) + 0 = 0

 Example 2:
 Input: nums1 = [0], nums2 = [0], nums3 = [0], nums4 = [0]
 Output: 1

 Example 3:
 Input:
 nums1 =
 [-71,52,67,2,-74,72,46,95,-88,-62,16,-13,36,-49,21,-2,-90,-93,46,-17,80,-31,30,78,41,65,-28,-66,-27,66,-25,27,40,-44,10,20,-21,-64,46,-95,-15,47,65,66,99,53,-68,29,14,81,-79,-79,0,-8,67,44,56,-76,97,87,98,20,-13,63,7,-14,62,0,63,0,-38,81,17,27,-21,-52,91,67,-34,40,-93,38,-26,7,41,-41,5,53,80,50,-73,10,-98,5,49,-12,50,-84,38,-43,97,-18,77,-8,39,-41,-68,83,73,-11,6,-68,2,73,97,32,54,6,62,-13,-53,-1,-40,47,62,-87,15,18,-50,28,-9,-81,74,65,19,-33,56,24,30,-13,-85,52,66,65,-25,23,94,11,88,-26,9,53,9,53,38,65,76,-54,34,12,60,21,-16,-4,87,75,-5,30,60,-41,83,-57,73,-82,-35,94,45,-6,43,-50,-50,-38,52,-79,25,-86,-25,-67,-62,52,-79,-48,62,-67,31]
 nums2 =
 [-70,63,-57,-93,13,92,89,-41,44,29,39,92,77,-71,53,-62,13,-16,97,14,-19,-60,-6,-63,63,36,90,84,-93,-44,-42,-65,41,57,54,-79,-35,-8,-64,-82,-27,56,97,87,36,-11,9,-45,-22,-41,-41,-50,68,65,61,1,55,71,-20,-17,-70,-65,-69,100,72,35,-23,-3,66,-50,40,91,46,68,33,50,98,91,-22,-63,36,68,59,-10,-100,84,47,-8,94,-37,-95,67,-73,-57,20,-95,-14,59,73,69,88,-15,71,-19,66,-2,23,36,-100,87,87,-90,28,40,-56,-45,-72,-48,-37,31,15,-9,-23,68,0,38,6,-14,51,-29,-22,78,-16,-17,52,8,-86,50,-2,84,77,89,-65,-15,-72,26,64,77,92,-87,71,46,94,-49,90,52,81,66,43,-64,-13,-32,-9,-88,-44,40,-52,13,16,8,11,-34,-74,-49,-32,31,-37,-43,-93,56,30,-46,-25,-63,-4,27,-40,59,50,52,39,49,-8,-7,-85]
 nums3 =
 [-31,-81,17,-55,-67,70,14,64,100,-45,16,22,8,-23,-90,-15,98,67,55,-62,55,-54,-13,-83,44,-33,-19,28,-34,-91,-83,59,85,-71,-45,-48,-74,-70,78,99,-42,-9,22,87,-2,59,8,-38,95,-67,88,39,78,-38,65,-19,-4,-46,57,11,36,86,-89,17,-4,-70,27,-49,77,-71,-27,66,46,88,74,80,41,-74,-79,100,51,42,-10,70,-40,64,-50,48,-55,-92,-33,74,-90,-41,-50,-29,-89,13,29,41,38,-25,-24,9,-54,56,-96,86,-87,-33,66,-17,-41,-44,45,-80,-56,-96,-86,-26,89,-19,38,-84,-82,57,64,19,34,-75,32,94,83,-7,3,43,-92,2,-50,-85,-3,-8,93,52,64,51,72,-70,98,21,8,45,92,0,-56,-100,-18,52,-25,-82,-29,40,33,-73,12,-35,26,49,-2,13,7,17,0,-95,64,84,72,-87,86,6,43,-92,-32,-77,-1,-24,-38,18,2,-47,77,8,18,42,39]
 nums4 =
 [-94,-90,65,43,-92,47,18,88,53,7,-25,-39,-29,43,-18,66,-42,-60,71,-85,91,69,-5,23,50,-84,53,86,95,11,-94,-8,21,98,-48,-23,-89,32,-17,-7,-18,-71,-68,-8,-84,79,93,-11,69,32,-87,-22,-76,85,92,62,96,-32,-49,24,-75,96,-26,-17,-86,67,71,88,-58,-35,-65,-100,-87,52,15,-89,42,-56,73,24,-95,-26,-22,-61,77,5,-17,6,63,4,-93,15,-38,-66,16,16,-59,58,-69,10,-41,-6,29,-36,96,74,-67,35,-42,-22,-79,78,-78,85,80,88,-85,-93,-98,57,45,-20,-23,-18,4,-94,20,53,-51,16,-54,72,18,-56,-59,72,-61,-18,72,40,25,-87,27,71,-44,85,13,-95,48,-23,50,-59,-93,-84,49,28,20,-78,42,31,-40,-54,-2,90,72,-17,52,97,13,80,41,-38,8,-6,10,-80,-95,-60,-10,44,-90,15,-52,41,92,7,-35,55,-24,16,88,-45,-30,81,-67]
 */

func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {

    var dict = [Int: Int]()
    var result = 0

    for i in nums1 {
        for j in nums2 {
            let sum = i + j
            dict[sum, default: 0] += 1
        }
    }

    for i in nums3 {
        for j in nums4 {
            let sum = i + j
            if let found = dict[-sum] {
                result += found
            }
        }
    }
    return result
}

let result = fourSumCount([1,2], [-2,-1], [-1,2], [0,2]) // 2
print(result)

let result1 = fourSumCount([0], [0], [0], [0]) // 1
print(result1)

let nums1 = [-71,52,67,2,-74,72,46,95,-88,-62,16,-13,36,-49,21,-2,-90,-93,46,-17,80,-31,30,78,41,65,-28,-66,-27,66,-25,27,40,-44,10,20,-21,-64,46,-95,-15,47,65,66,99,53,-68,29,14,81,-79,-79,0,-8,67,44,56,-76,97,87,98,20,-13,63,7,-14,62,0,63,0,-38,81,17,27,-21,-52,91,67,-34,40,-93,38,-26,7,41,-41,5,53,80,50,-73,10,-98,5,49,-12,50,-84,38,-43,97,-18,77,-8,39,-41,-68,83,73,-11,6,-68,2,73,97,32,54,6,62,-13,-53,-1,-40,47,62,-87,15,18,-50,28,-9,-81,74,65,19,-33,56,24,30,-13,-85,52,66,65,-25,23,94,11,88,-26,9,53,9,53,38,65,76,-54,34,12,60,21,-16,-4,87,75,-5,30,60,-41,83,-57,73,-82,-35,94,45,-6,43,-50,-50,-38,52,-79,25,-86,-25,-67,-62,52,-79,-48,62,-67,31]
let nums2 = [-70,63,-57,-93,13,92,89,-41,44,29,39,92,77,-71,53,-62,13,-16,97,14,-19,-60,-6,-63,63,36,90,84,-93,-44,-42,-65,41,57,54,-79,-35,-8,-64,-82,-27,56,97,87,36,-11,9,-45,-22,-41,-41,-50,68,65,61,1,55,71,-20,-17,-70,-65,-69,100,72,35,-23,-3,66,-50,40,91,46,68,33,50,98,91,-22,-63,36,68,59,-10,-100,84,47,-8,94,-37,-95,67,-73,-57,20,-95,-14,59,73,69,88,-15,71,-19,66,-2,23,36,-100,87,87,-90,28,40,-56,-45,-72,-48,-37,31,15,-9,-23,68,0,38,6,-14,51,-29,-22,78,-16,-17,52,8,-86,50,-2,84,77,89,-65,-15,-72,26,64,77,92,-87,71,46,94,-49,90,52,81,66,43,-64,-13,-32,-9,-88,-44,40,-52,13,16,8,11,-34,-74,-49,-32,31,-37,-43,-93,56,30,-46,-25,-63,-4,27,-40,59,50,52,39,49,-8,-7,-85]
let nums3 = [-31,-81,17,-55,-67,70,14,64,100,-45,16,22,8,-23,-90,-15,98,67,55,-62,55,-54,-13,-83,44,-33,-19,28,-34,-91,-83,59,85,-71,-45,-48,-74,-70,78,99,-42,-9,22,87,-2,59,8,-38,95,-67,88,39,78,-38,65,-19,-4,-46,57,11,36,86,-89,17,-4,-70,27,-49,77,-71,-27,66,46,88,74,80,41,-74,-79,100,51,42,-10,70,-40,64,-50,48,-55,-92,-33,74,-90,-41,-50,-29,-89,13,29,41,38,-25,-24,9,-54,56,-96,86,-87,-33,66,-17,-41,-44,45,-80,-56,-96,-86,-26,89,-19,38,-84,-82,57,64,19,34,-75,32,94,83,-7,3,43,-92,2,-50,-85,-3,-8,93,52,64,51,72,-70,98,21,8,45,92,0,-56,-100,-18,52,-25,-82,-29,40,33,-73,12,-35,26,49,-2,13,7,17,0,-95,64,84,72,-87,86,6,43,-92,-32,-77,-1,-24,-38,18,2,-47,77,8,18,42,39]
let nums4 = [-94,-90,65,43,-92,47,18,88,53,7,-25,-39,-29,43,-18,66,-42,-60,71,-85,91,69,-5,23,50,-84,53,86,95,11,-94,-8,21,98,-48,-23,-89,32,-17,-7,-18,-71,-68,-8,-84,79,93,-11,69,32,-87,-22,-76,85,92,62,96,-32,-49,24,-75,96,-26,-17,-86,67,71,88,-58,-35,-65,-100,-87,52,15,-89,42,-56,73,24,-95,-26,-22,-61,77,5,-17,6,63,4,-93,15,-38,-66,16,16,-59,58,-69,10,-41,-6,29,-36,96,74,-67,35,-42,-22,-79,78,-78,85,80,88,-85,-93,-98,57,45,-20,-23,-18,4,-94,20,53,-51,16,-54,72,18,-56,-59,72,-61,-18,72,40,25,-87,27,71,-44,85,13,-95,48,-23,50,-59,-93,-84,49,28,20,-78,42,31,-40,-54,-2,90,72,-17,52,97,13,80,41,-38,8,-6,10,-80,-95,-60,-10,44,-90,15,-52,41,92,7,-35,55,-24,16,88,-45,-30,81,-67]

let result2 = fourSumCount(nums1, nums2, nums3, nums4) //
print(result2)
