import Collections

/*
 ## 215. Kth Largest Element in an Array
 https://leetcode.com/problems/kth-largest-element-in-an-array/description/

 Given an integer array nums and an integer k, return the kth largest element in the array.

 Note that it is the kth largest element in the sorted order, not the kth distinct element.

 Can you solve it without sorting?

 Example 1:
 Input: nums = [3,2,1,5,6,4], k = 2
 Output: 5

 Example 2:
 Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
 Output: 4
 */

//func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
//    let nums = nums.sorted(by: >)
//    return nums[k-1]
//}
//
//let result = findKthLargest([3,2,1,5,6,4], 2) // 5
//print(result)
//
//let result1 = findKthLargest([3,2,3,1,2,4,5,5,6], 4) // 4
//print(result1)

// Using Heap

func findKthLargest1(_ nums: [Int], _ k: Int) -> Int {
    let n = nums.count
    if k == 1 { return nums.max()! }
    if k == n { return nums.min()! }

    let heap = Heap(of: nums[0..<k], order: <)
    for num in nums[k...] {
        heap.pushThenPop(num)
    }
    return heap.peek()
}

let result2 = findKthLargest1([3,2,1,5,6,4], 2) // 5
print(result2)

let result3 = findKthLargest1([3,2,3,1,2,4,5,5,6], 4) // 4
print(result3)

class Heap<T> {
    typealias Comparator = (T, T) -> Bool
    private var compare: Comparator
    private(set) var items: [T]
    var isEmpty: Bool { return items.isEmpty }
    var count: Int { return items.count }
    func peek() -> T! { return items.first }

    // pass operator '>' for a max-heap, '<' for a min-heap, or custom comparing function
    // use "withoutOrdering" if array is already in proper form for binary tree, e.g. sorted
    init(_ array: [T], order: @escaping Comparator, withoutOrdering: Bool = false) {
        self.items = array
        self.compare = order
        if withoutOrdering { return }
        for i in stride(from: (items.count/2 - 1), through: 0, by: -1) {
            siftUp(i)   // like a Python heapify, O(n) time complexity for the whole array
        }
    }
    convenience init(order: @escaping Comparator) {
        self.init([], order: order)
    }
    convenience init<S: Sequence>(of s: S, order: @escaping Comparator) where S.Element == T {
        self.init(Array(s), order: order)
    }

    func push(_ value: T) {
        items.append(value)
        siftDown(items.count - 1)
    }
    func push<S: Sequence>(_ s: S) where S.Element == T {
        for value in s { push(value) }
    }

    // takes the root node from heap (max value for a max-heap, min value for a min-heap)
    @discardableResult func pop() -> T! {
        if items.isEmpty { return nil }
        if items.count == 1 { return items.removeLast() }
        defer { items[0] = items.removeLast(); siftUp() }
        return items[0]
    }

    // push + pop in one action, more efficient than simply calling push then pop
    @discardableResult func pushThenPop(_ value: T) -> T      // aka 'heappushpop'
    {
        if items.isEmpty || compare(value, items[0]) { return value }
        defer { items[0] = value; siftUp() }
        return items[0]
    }
    // pop + push in one action, more efficient than simply calling pop then push
    @discardableResult func popThenPush(_ value: T) -> T!     // aka 'heapreplace'
    {
        if items.isEmpty || items.count == 1 {
            defer { items = [value] }; return items.first
        }
        defer { items[0] = value; siftUp() }
        return items[0]
    }

    func clear() { items = [] }

    @inline(__always) private func parent(of index: Int) -> Int { (index - 1) / 2 }
    @inline(__always) private func leftChild(of index: Int) -> Int { 2 * index + 1 }
    @inline(__always) private func rightChild(of index: Int) -> Int { 2 * index + 2 }

    // moves the value from given index up to its respective position in binary tree
    private func siftDown(_ index: Int)
    {
        let value = items[index]
        var childInd = index, parentInd = parent(of: childInd)
        while childInd > 0 && compare(value, items[parentInd]) {
            items[childInd] = items[parentInd]
            (childInd, parentInd) = (parentInd, parent(of: parentInd))
        }
        items[childInd] = value
    }

    // restores the items heap order by moving the item from given index towards the end of array
    private func siftUp(_ index: Int = 0)
    {
        let end = items.count
        var parentInd = index, lChildInd, rChildInd: Int
        var firstInFamily = parentInd //min of these three for min-heap, max for max-heap
        while true
        {
            lChildInd = leftChild(of: parentInd)
            rChildInd = lChildInd + 1

            if lChildInd < end && compare(items[lChildInd], items[firstInFamily]) {
                firstInFamily = lChildInd
            }
            if rChildInd < end && compare(items[rChildInd], items[firstInFamily]) {
                firstInFamily = rChildInd
            }
            if firstInFamily == parentInd { break }

            items.swapAt(firstInFamily, parentInd)
            parentInd = firstInFamily
        }
    }
}
