import Foundation

/*
 93. Restore IP Addresses
 https://leetcode.com/problems/restore-ip-addresses/

 A valid IP address consists of exactly four integers separated by single dots. Each integer is between 0 and 255 (inclusive) and cannot have leading zeros.

 For example, "0.1.2.201" and "192.168.1.1" are valid IP addresses, but "0.011.255.245", "192.168.1.312" and "192.168@1.1" are invalid IP addresses.
 Given a string s containing only digits, return all possible valid IP addresses that can be formed by inserting dots into s. You are not allowed to reorder or remove any digits in s. You may return the valid IP addresses in any order.

 Example 1:
 Input: s = "25525511135"
 Output: ["255.255.11.135","255.255.111.35"]

 Example 2:
 Input: s = "0000"
 Output: ["0.0.0.0"]

 Example 3:
 Input: s = "101023"
 Output: ["1.0.10.23","1.0.102.3","10.1.0.23","10.10.2.3","101.0.2.3"]
 */

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
