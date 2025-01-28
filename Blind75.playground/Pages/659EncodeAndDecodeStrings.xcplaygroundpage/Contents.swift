import Foundation

/*
 ## 659 · Encode and Decode Strings
 https://www.lintcode.com/problem/659/
 NOTE: THIS PROBLEM IS PREMIUM ON LEETCODE SO IT'S SOLVED ON LINTCODE INSTEAD

 Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.

 Please implement encode and decode

 Example1
 Input: ["lint","code","love","you"]
 Output: ["lint","code","love","you"]
 Explanation:
 One possible encode method is: "lint:;code:;love:;you"

 Example2
 Input: ["we", "say", ":", "yes"]
 Output: ["we", "say", ":", "yes"]
 Explanation:
 One possible encode method is: "we:;say:;:::;yes"
 */

/*
 * @param strs: a list of strings
 * @return: encodes a list of strings to a single string.
 */
func encode(_ strs: [String]) -> String {
    var result = ""

    for s in strs {
        let text = String(s.count) + "#" + s
        result.append(text)
    }
    return result
}

/*
 * @param str: A string
 * @return: decodes a single string to a list of strings
 */
func decode(_ str: String) -> [String] {
    let str = Array(str)
    var result = [String]()
    var i = 0

    while i < str.count {
        if str[i] == "#" {
            let length = Int(String(str[i-1]))!
            result.append(String(str[i + 1...i + length]))
            i += length
        } else {
            i += 1
        }

    }
    return result
}

let start = ["lint","code","love","you"]
let encodeResult = encode(start) // "4#lint4#code4#love3#you"
print(encodeResult)

let decodeResult = decode(encodeResult) // ["lint","code","love","you"]
print(decodeResult)
assert(start == decodeResult)

print("================================================")
let start1 = ["we", "say", ":", "yes"]
let encodeResult1 = encode(start1) // "2#we3#say1#:3#yes"
print(encodeResult1)

let decodeResult1 = decode(encodeResult1) // ["we", "say", ":", "yes"]
print(decodeResult1)
assert(start1 == decodeResult1)
