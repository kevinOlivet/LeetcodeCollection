import Foundation

/*
 71. Simplify Path
 https://leetcode.com/problems/simplify-path/description/

 Given a string path, which is an absolute path (starting with a slash '/') to a file or directory in a Unix-style file system, convert it to the simplified canonical path.

 In a Unix-style file system, a period '.' refers to the current directory, a double period '..' refers to the directory up a level, and any multiple consecutive slashes (i.e. '//') are treated as a single slash '/'. For this problem, any other format of periods such as '...' are treated as file/directory names.

 The canonical path should have the following format:

 The path starts with a single slash '/'.
 Any two directories are separated by a single slash '/'.
 The path does not end with a trailing '/'.
 The path only contains the directories on the path from the root directory to the target file or directory (i.e., no period '.' or double period '..')
 Return the simplified canonical path.

 Example 1:
 Input: path = "/home/"
 Output: "/home"
 Explanation: Note that there is no trailing slash after the last directory name.

 Example 2
 Input: path = "/../"
 Output: "/"
 Explanation: Going one level up from the root directory is a no-op, as the root level is the highest level you can go.

 Example 3:
 Input: path = "/home//foo/"
 Output: "/home/foo"
 Explanation: In the canonical path, multiple consecutive slashes are replaced by a single one.
 */

func simplifyPath(_ path: String) -> String {
    var path = Array(path + "/")
    var stack = [String]()
    var current = ""

    for c in path {
        if c == "/" {
            if current == ".." {
                if !stack.isEmpty { stack.popLast() }
            } else if !current.isEmpty && current != "." {
                stack.append(current)
            }
            current = ""
        } else {
            current += String(c)
        }
    }
    return "/" + stack.joined(separator: "/")
}

let result = simplifyPath("/home/") // "/home"
print(result)

let result1 = simplifyPath("/../") // "/"
print(result1)

let result2 = simplifyPath("/home//foo/") // "/home/foo"
print(result2)

let result3 = simplifyPath("/../abc//./def/") // "/abc/def"
print(result3)
