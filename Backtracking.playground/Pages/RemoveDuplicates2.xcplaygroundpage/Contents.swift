import Foundation


func removeDuplicates(_ nums: inout [Int]) -> Int {

    var result = 0

    var aPointer = 0
    var bPointer = 0

    var currentNumber = nums[0]
    var currentCount = 0

    while bPointer < nums.count {

        currentNumber = nums[aPointer]

        if nums[bPointer] == currentNumber {
            if currentCount < 2 {

            } else {
                nums[bPointer] = Int.max
            }
            currentCount += 1
            bPointer += 1

        } else {
            currentCount = 0
            aPointer = bPointer
        }
    }

    nums.sort()

    for i in nums where i < Int.max {
        result += 1
    }

    return result
}

var testArray = [1,1,1,2,2,3]

removeDuplicates(&testArray)

print(testArray)
