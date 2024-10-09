import Foundation

/*
 ## 373. Find K Pairs with Smallest Sums
 https://leetcode.com/problems/find-k-pairs-with-smallest-sums/description/

 You are given two integer arrays nums1 and nums2 sorted in non-decreasing order and an integer k.

 Define a pair (u, v) which consists of one element from the first array and one element from the second array.

 Return the k pairs (u1, v1), (u2, v2), ..., (uk, vk) with the smallest sums.

 Example 1:
 Input: nums1 = [1,7,11], nums2 = [2,4,6], k = 3
 Output: [[1,2],[1,4],[1,6]]
 Explanation: The first 3 pairs are returned from the sequence: [1,2],[1,4],[1,6],[7,2],[7,4],[11,2],[7,6],[11,4],[11,6]

 Example 2:
 Input: nums1 = [1,1,2], nums2 = [1,2,3], k = 2
 Output: [[1,1],[1,1]]
 Explanation: The first 2 pairs are returned from the sequence: [1,1],[1,1],[1,2],[2,1],[1,2],[2,2],[1,3],[1,3],[2,3]
 */

fileprivate extension Array where Element == Int {
    var val: Int { self[0] + self[1] }
}

func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {

    let heap = Heap(k, nums1[0] + nums2[0])

    for i in nums1 {
        var added = 0
        for j in nums2 {
            guard heap.insert([i, j]) else { break }
            added += 1
        }
        guard added > 0 else { break }
    }

    return heap.data
}

let result = kSmallestPairs([1,7,11], [2,4,6], 3) // [[1,2],[1,4],[1,6]]
print(result)

let result1 = kSmallestPairs([1,1,2], [1,2,3], 2) //  [[1,1],[1,1]]
print(result1)

class Heap {

    private(set) var data = [[Int]]()
    private let size: Int
    private let minv: Int

    init(_ size: Int, _ minv: Int) {
        self.size = size
        self.minv = minv
    }

    func insert(_ new: [Int]) -> Bool {
        guard data.count >= size else {
            data.append(new)
            if new.val > minv { siftUp(data.count - 1) }
            return true
        }
        guard data[0].val >= new.val else {
            return false
        }
        guard data[0].val == new.val else {
            data[0] = new
            siftDown(0)
            return true
        }
        guard minv < new.val else {
            return false
        }
        guard let i = data.firstIndex(where: { $0.val > new.val }) else {
            return false
        }

        data[i] = new
        siftDown(i)

        return true
    }

    private func siftDown(_ i: Int) {

        var maxi = i
        let l = i * 2 + 1
        let r = i * 2 + 2

        if l < data.count, data[l].val > data[maxi].val { maxi = l }
        if r < data.count, data[r].val > data[maxi].val { maxi = r }

        guard i != maxi else { return }

        data.swapAt(i, maxi)
        siftDown(maxi)
    }

    private func siftUp(_ i: Int) {

        guard i > 0 else { return }

        let p = (i - 1) / 2

        guard data[p].val < data[i].val else { return }

        data.swapAt(i, p)
        siftUp(p)
    }
}
