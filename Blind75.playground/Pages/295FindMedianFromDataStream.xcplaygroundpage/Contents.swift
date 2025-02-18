import Foundation

/*
 ## 295. Find Median from Data Stream
 https://leetcode.com/problems/find-median-from-data-stream/description/

 The median is the middle value in an ordered integer list. If the size of the list is even, there is no middle value, and the median is the mean of the two middle values.

 For example, for arr = [2,3,4], the median is 3.
 For example, for arr = [2,3], the median is (2 + 3) / 2 = 2.5.
 Implement the MedianFinder class:

 MedianFinder() initializes the MedianFinder object.
 void addNum(int num) adds the integer num from the data stream to the data structure.
 double findMedian() returns the median of all elements so far. Answers within 10-5 of the actual answer will be accepted.

 Example 1:
 Input
 ["MedianFinder", "addNum", "addNum", "findMedian", "addNum", "findMedian"]
 [[], [1], [2], [], [3], []]
 Output
 [null, null, null, 1.5, null, 2.0]

 Explanation
 MedianFinder medianFinder = new MedianFinder();
 medianFinder.addNum(1);    // arr = [1]
 medianFinder.addNum(2);    // arr = [1, 2]
 medianFinder.findMedian(); // return 1.5 (i.e., (1 + 2) / 2)
 medianFinder.addNum(3);    // arr[1, 2, 3]
 medianFinder.findMedian(); // return 2.0
 */

class MedianFinder {

    var holder: [Int]
    var updateNeeded = true

    init() {
        holder = [Int]()
    }

    func addNum(_ num: Int) {
        holder.append(num)
        updateNeeded = true
    }

    func findMedian() -> Double {
        update()
        if holder.isEmpty { return 0 }
        if holder.count < 2 { return Double(holder[0]) }
        if holder.count % 2 == 0 {
            return (Double(holder[(holder.count/2) - 1]) + Double(holder[(holder.count/2)]))/2
        } else {
            return Double(holder[(holder.count/2)])
        }
    }

    func update() {
        if updateNeeded {
            holder.sort()
            updateNeeded = false
        }
    }
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * let obj = MedianFinder()
 * obj.addNum(num)
 * let ret_2: Double = obj.findMedian()
 */

let obj = MedianFinder()
obj.addNum(1)
obj.addNum(2)
let ret_2: Double = obj.findMedian()
obj.addNum(3)
let ret_3: Double = obj.findMedian()
