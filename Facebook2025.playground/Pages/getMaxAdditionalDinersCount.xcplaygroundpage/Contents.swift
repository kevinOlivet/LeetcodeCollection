import Foundation

func getMaxAdditionalDinersCount(_ N: Int, _ K: Int, _ M: Int, _ S: [Int]) -> Int {
    // Sort the existing diners' positions
    let sortedS = S.sorted()

    // Initialize the count of additional diners
    var additionalDiners = 0

    // Calculate available seats before the first diner
    let firstDiner = sortedS[0]
    additionalDiners += (firstDiner - 1) / (K + 1)

    // Calculate available seats between existing diners
    for i in 1..<M {
        let distance = sortedS[i] - sortedS[i - 1] - 1
        additionalDiners += distance / (K + 1)
    }

    // Calculate available seats after the last diner
    let lastDiner = sortedS[M - 1]
    additionalDiners += (N - lastDiner) / (K + 1)

    return additionalDiners
}

// Example usage:
let N1 = 10, K1 = 1, M1 = 2, S1 = [2, 6]
print(getMaxAdditionalDinersCount(N1, K1, M1, S1)) // Output: 3

let N2 = 15, K2 = 2, M2 = 3, S2 = [11, 6, 14]
print(getMaxAdditionalDinersCount(N2, K2, M2, S2)) // Output: 1
