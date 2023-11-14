import Foundation

// doesn't work for small arrays
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var low = 0
    var high = nums.count - 1

    var foundIndex = -1

    while low < high {
        let middle = (high + low)/2
        let current = nums[middle]
        if target == current {
            foundIndex = middle
            break
        } else if target > nums[middle] {
            low = middle + 1
        } else {
            high = middle - 1
        }
    }

    var foundLow = foundIndex
    var foundHigh = foundIndex
    if foundIndex != -1 {

        while nums[foundLow] == target {
            foundLow -= 1
        }
        foundLow += 1
        while nums[foundHigh] == target {
            foundHigh += 1
        }
        foundHigh -= 1
    }
    return [foundLow, foundHigh]
}

searchRange([5,7,7,8,8,10], 8)
//searchRange([1,1,1], 1)
