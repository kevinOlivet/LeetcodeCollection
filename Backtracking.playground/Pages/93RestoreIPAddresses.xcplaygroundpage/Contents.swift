import Foundation

func restoreIpAddresses(_ s: String) -> [String] {
    var result = [String]()
    if s.count > 12 { return result }

    let sArray = Array(s)
    func backtrack(i: Int, dots: Int, current: [Character]) {
        var current = current
        if dots == 4 && i == s.count {
            current.popLast()
            result.append(String(current))
            return
        }
        if dots > 4 { return }

        for j in i..<min(i + 3, s.count) {
            if Int(String(sArray[i...j]))! < 256 && (i == j || sArray[i] != "0") {
                backtrack(i: j + 1, dots: dots + 1, current: current + sArray[i...j] + ".")
            }
        }
    }

    backtrack(i: 0, dots: 0, current: [])
    return result
}

let result = restoreIpAddresses("25525511135") // ["255.255.11.135","255.255.111.35"]
print(result)
