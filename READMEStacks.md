# LeetcodeCollection: Stacks
Various Leetcode playgrounds: Backtracking, Stacks, DynamicProgramming, Blind75

## 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses/description/

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

## 71. Simplify Path
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

## 155. Min Stack
 https://leetcode.com/problems/min-stack/description/

 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 Implement the MinStack class:

 MinStack() initializes the stack object.
 void push(int val) pushes the element val onto the stack.
 void pop() removes the element on the top of the stack.
 int top() gets the top element of the stack.
 int getMin() retrieves the minimum element in the stack.

 Here's the rub:
 You must implement a solution with O(1) time complexity for each function.
 Especially the func getMin()

 Example 1:
 Input
 ["MinStack","push","push","push","getMin","pop","top","getMin"]
 [[],[-2],[0],[-3],[],[],[],[]]

 Output
 [null,null,null,null,-3,null,0,-2]

 Explanation
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin(); // return -3
 minStack.pop();
 minStack.top();    // return 0
 minStack.getMin(); // return -2

## 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/description/

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]

## 735. Asteroid Collision
 https://leetcode.com/problems/asteroid-collision/

 We are given an array asteroids of integers representing asteroids in a row.

 For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

 Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

 Example 1:
 Input: asteroids = [5,10,-5]
 Output: [5,10]
 Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.

 Example 2:
 Input: asteroids = [8,-8]
 Output: []
 Explanation: The 8 and -8 collide exploding each other.

 Example 3:
 Input: asteroids = [10,2,-5]
 Output: [10]
 Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.

## 853. Car Fleet
 https://leetcode.com/problems/car-fleet/description/

 There are n cars going to the same destination along a one-lane road. The destination is target miles away.

 You are given two integer array position and speed, both of length n, where position[i] is the position of the ith car and speed[i] is the speed of the ith car (in miles per hour).

 A car can never pass another car ahead of it, but it can catch up to it and drive bumper to bumper at the same speed. The faster car will slow down to match the slower car's speed. The distance between these two cars is ignored (i.e., they are assumed to have the same position).

 A car fleet is some non-empty set of cars driving at the same position and same speed. Note that a single car is also a car fleet.

 If a car catches up to a car fleet right at the destination point, it will still be considered as one car fleet.

 Return the number of car fleets that will arrive at the destination.

 Example 1:
 Input: target = 12, position = [10,8,0,5,3], speed = [2,4,1,1,3]
 Output: 3
 Explanation:
 The cars starting at 10 (speed 2) and 8 (speed 4) become a fleet, meeting each other at 12.
 The car starting at 0 does not catch up to any other car, so it is a fleet by itself.
 The cars starting at 5 (speed 1) and 3 (speed 3) become a fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.
 Note that no other cars meet these fleets before the destination, so the answer is 3.

 Example 2:
 Input: target = 10, position = [3], speed = [3]
 Output: 1
 Explanation: There is only one car, hence there is only one fleet.

 Example 3:
 Input: target = 100, position = [0,2,4], speed = [4,2,1]
 Output: 1
 Explanation:
 The cars starting at 0 (speed 4) and 2 (speed 2) become a fleet, meeting each other at 4. The fleet moves at speed 2.
 Then, the fleet (speed 2) and the car starting at 4 (speed 1) become one fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.

## 1776. Car Fleet II
 https://leetcode.com/problems/car-fleet-ii/description/

 There are n cars traveling at different speeds in the same direction along a one-lane road. You are given an array cars of length n, where cars[i] = [positioni, speedi] represents:

 positioni is the distance between the ith car and the beginning of the road in meters. It is guaranteed that positioni < positioni+1.
 speedi is the initial speed of the ith car in meters per second.
 For simplicity, cars can be considered as points moving along the number line. Two cars collide when they occupy the same position. Once a car collides with another car, they unite and form a single car fleet. The cars in the formed fleet will have the same position and the same speed, which is the initial speed of the slowest car in the fleet.

 Return an array answer, where answer[i] is the time, in seconds, at which the ith car collides with the next car, or -1 if the car does not collide with the next car. Answers within 10-5 of the actual answers are accepted.

 Example 1:
 Input: cars = [[1,2],[2,1],[4,3],[7,2]]
 Output: [1.00000,-1.00000,3.00000,-1.00000]
 Explanation: After exactly one second, the first car will collide with the second car, and form a car fleet with speed 1 m/s. After exactly 3 seconds, the third car will collide with the fourth car, and form a car fleet with speed 2 m/s.

 Example 2:
 Input: cars = [[3,4],[5,4],[6,3],[9,1]]
 Output: [2.00000,1.00000,1.50000,-1.00000]

## 225. Implement Stack using Queues
 https://leetcode.com/problems/implement-stack-using-queues/description/

 ie. an Array pretending to be a Queue pretending to be a Stack
 
 Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

 Implement the MyStack class:

 void push(int x) Pushes element x to the top of the stack.
 int pop() Removes the element on the top of the stack and returns it.
 int top() Returns the element on the top of the stack.
 boolean empty() Returns true if the stack is empty, false otherwise.
 Notes:

 You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
 Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.

 Example 1:
 Input
 ["MyStack", "push", "push", "top", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 2, 2, false]

 Explanation
 MyStack myStack = new MyStack();
 myStack.push(1);
 myStack.push(2);
 myStack.top(); // return 2
 myStack.pop(); // return 2
 myStack.empty(); // return False

## 232. Implement Queue using Stacks
 https://leetcode.com/problems/implement-queue-using-stacks/description/

 ie. An Array pretending to be a Stack pretending to be a Queue

 Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

 Implement the MyQueue class:

 void push(int x) Pushes element x to the back of the queue.
 int pop() Removes the element from the front of the queue and returns it.
 int peek() Returns the element at the front of the queue.
 boolean empty() Returns true if the queue is empty, false otherwise.
 Notes:

 You must use only standard operations of a stack, which means only push to top, peek/pop from top, size, and is empty operations are valid.
 Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.

 Example 1:
 Input
 ["MyQueue", "push", "push", "peek", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 1, 1, false]

 Explanation
 MyQueue myQueue = new MyQueue();
 myQueue.push(1); // queue is: [1]
 myQueue.push(2); // queue is: [1, 2] (leftmost is front of the queue)
 myQueue.peek(); // return 1
 myQueue.pop(); // return 1, queue is [2]
 myQueue.empty(); // return false

## 901. Online Stock Span
 https://leetcode.com/problems/online-stock-span/description/

 Design an algorithm that collects daily price quotes for some stock and returns the span of that stock's price for the current day.

 The span of the stock's price in one day is the maximum number of consecutive days (starting from that day and going backward) for which the stock price was less than or equal to the price of that day.

 For example, if the prices of the stock in the last four days is [7,2,1,2] and the price of the stock today is 2, then the span of today is 4 because starting from today, the price of the stock was less than or equal 2 for 4 consecutive days.
 Also, if the prices of the stock in the last four days is [7,34,1,2] and the price of the stock today is 8, then the span of today is 3 because starting from today, the price of the stock was less than or equal 8 for 3 consecutive days.
 Implement the StockSpanner class:

 StockSpanner() Initializes the object of the class.
 int next(int price) Returns the span of the stock's price given that today's price is price.

 Example 1:
 Input
 ["StockSpanner", "next", "next", "next", "next", "next", "next", "next"]
 [[], [100], [80], [60], [70], [60], [75], [85]]
 Output
 [null, 1, 1, 1, 2, 1, 4, 6]

 Explanation
 StockSpanner stockSpanner = new StockSpanner();
 stockSpanner.next(100); // return 1
 stockSpanner.next(80);  // return 1
 stockSpanner.next(60);  // return 1
 stockSpanner.next(70);  // return 2
 stockSpanner.next(60);  // return 1
 stockSpanner.next(75);  // return 4, because the last 4 prices (including today's price of 75) were less than or equal to today's price.
 stockSpanner.next(85);  // return 6

## 739. Daily Temperatures
 https://leetcode.com/problems/daily-temperatures/description/

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

 Example 1:
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]

 Example 2:
 Input: temperatures = [30,40,50,60]
 Output: [1,1,1,0]

 Example 3:
 Input: temperatures = [30,60,90]
 Output: [1,1,0]

## 150. Evaluate Reverse Polish Notation
 https://leetcode.com/problems/evaluate-reverse-polish-notation/

 You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.

 Evaluate the expression. Return an integer that represents the value of the expression.

 Note that:
 The valid operators are '+', '-', '*', and '/'.
 Each operand may be an integer or another expression.
 The division between two integers always truncates toward zero.
 There will not be any division by zero.
 The input represents a valid arithmetic expression in a reverse polish notation.
 The answer and all the intermediate calculations can be represented in a 32-bit integer.

 Example 1:
 Input: tokens = ["2","1","+","3","*"]
 Output: 9
 Explanation: ((2 + 1) * 3) = 9

 Example 2:
 Input: tokens = ["4","13","5","/","+"]
 Output: 6
 Explanation: (4 + (13 / 5)) = 6

 Example 3:
 Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
 Output: 22
 Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
 = ((10 * (6 / (12 * -11))) + 17) + 5
 = ((10 * (6 / -132)) + 17) + 5
 = ((10 * 0) + 17) + 5
 = (0 + 17) + 5
 = 17 + 5
 = 22

## 151. Reverse Words in a String
 https://leetcode.com/problems/reverse-words-in-a-string/description/
 Not a stack :)

 Given an input string s, reverse the order of the words.

 A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

 Return a string of the words in reverse order concatenated by a single space.

 Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

 Example 1:
 Input: s = "the sky is blue"
 Output: "blue is sky the"

 Example 2:
 Input: s = "  hello world  "
 Output: "world hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.

 Example 3:
 Input: s = "a good   example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.

## 402. Remove K Digits
 https://leetcode.com/problems/remove-k-digits/

 Given string num representing a non-negative integer num, and an integer k, return the smallest possible integer after removing k digits from num.

 Example 1:
 Input: num = "1432219", k = 3
 Output: "1219"
 Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.

 Example 2:
 Input: num = "10200", k = 1
 Output: "200"
 Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.

 Example 3:
 Input: num = "10", k = 2
 Output: "0"
 Explanation: Remove all the digits from the number and it is left with nothing which is 0.

## 895. Maximum Frequency Stack
 https://leetcode.com/problems/maximum-frequency-stack/

 Design a stack-like data structure to push elements to the stack and pop the most frequent element from the stack.

 Implement the FreqStack class:

 FreqStack() constructs an empty frequency stack.
 void push(int val) pushes an integer val onto the top of the stack.
 int pop() removes and returns the most frequent element in the stack.
 If there is a tie for the most frequent element, the element closest to the stack's top is removed and returned.

 Example 1:
 Input
 ["FreqStack", "push", "push", "push", "push", "push", "push", "pop", "pop", "pop", "pop"]
 [[], [5], [7], [5], [7], [4], [5], [], [], [], []]
 Output
 [null, null, null, null, null, null, null, 5, 7, 5, 4]

 Explanation
 FreqStack freqStack = new FreqStack();
 freqStack.push(5); // The stack is [5]
 freqStack.push(7); // The stack is [5,7]
 freqStack.push(5); // The stack is [5,7,5]
 freqStack.push(7); // The stack is [5,7,5,7]
 freqStack.push(4); // The stack is [5,7,5,7,4]
 freqStack.push(5); // The stack is [5,7,5,7,4,5]
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,5,7,4].
 freqStack.pop();   // return 7, as 5 and 7 is the most frequent, but 7 is closest to the top. The stack becomes [5,7,5,4].
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,4].
 freqStack.pop();   // return 4, as 4, 5 and 7 is the most frequent, but 4 is closest to the top. The stack becomes [5,7].

## 496. Next Greater Element I
 https://leetcode.com/problems/next-greater-element-i/

 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
 - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.

## 503. Next Greater Element II
 https://leetcode.com/problems/next-greater-element-ii/description/

 Given a circular integer array nums (i.e., the next element of nums[nums.length - 1] is nums[0]), return the next greater number for every element in nums.

 The next greater number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, return -1 for this number.

 Example 1:
 Input: nums = [1,2,1]
 Output: [2,-1,2]
 Explanation: The first 1's next greater number is 2;
 The number 2 can't find next greater number.
 The second 1's next greater number needs to search circularly, which is also 2.

 Example 2:
 Input: nums = [1,2,3,4,3]
 Output: [2,3,4,-1,4]

## 173. Binary Search Tree Iterator
 https://leetcode.com/problems/binary-search-tree-iterator/description/

 Implement the BSTIterator class that represents an iterator over the in-order traversal of a binary search tree (BST):

 BSTIterator(TreeNode root) Initializes an object of the BSTIterator class. The root of the BST is given as part of the constructor. The pointer should be initialized to a non-existent number smaller than any element in the BST.
 boolean hasNext() Returns true if there exists a number in the traversal to the right of the pointer, otherwise returns false.
 int next() Moves the pointer to the right, then returns the number at the pointer.
 Notice that by initializing the pointer to a non-existent smallest number, the first call to next() will return the smallest element in the BST.

 You may assume that next() calls will always be valid. That is, there will be at least a next number in the in-order traversal when next() is called.

 Example 1:
 Input
 ["BSTIterator", "next", "next", "hasNext", "next", "hasNext", "next", "hasNext", "next", "hasNext"]
 [[[7, 3, 15, null, null, 9, 20]], [], [], [], [], [], [], [], [], []]
 Output
 [null, 3, 7, true, 9, true, 15, true, 20, false]

 Explanation
 BSTIterator bSTIterator = new BSTIterator([7, 3, 15, null, null, 9, 20]);
 bSTIterator.next();    // return 3
 bSTIterator.next();    // return 7
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 9
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 15
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 20
 bSTIterator.hasNext(); // return False

## 94. Binary Tree Inorder Traversal (Using a stack instead of recursion
 https://leetcode.com/problems/binary-tree-inorder-traversal/description/

 Given the root of a binary tree, return the inorder traversal of its nodes' values.

 Example 1:
 Input: root = [1,null,2,3]
 Output: [1,3,2]

 Example 2:
 Input: root = []
 Output: []

 Example 3:
 Input: root = [1]
 Output: [1]

## 682. Baseball Game
 https://leetcode.com/problems/baseball-game/description/

 You are keeping the scores for a baseball game with strange rules. At the beginning of the game, you start with an empty record.

 You are given a list of strings operations, where operations[i] is the ith operation you must apply to the record and is one of the following:

 An integer x.
 Record a new score of x.
 '+'.
 Record a new score that is the sum of the previous two scores.
 'D'.
 Record a new score that is the double of the previous score.
 'C'.
 Invalidate the previous score, removing it from the record.
 Return the sum of all the scores on the record after applying all the operations.

 The test cases are generated such that the answer and all intermediate calculations fit in a 32-bit integer and that all operations are valid.

 Example 1:
 Input: ops = ["5","2","C","D","+"]
 Output: 30
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "2" - Add 2 to the record, record is now [5, 2].
 "C" - Invalidate and remove the previous score, record is now [5].
 "D" - Add 2 * 5 = 10 to the record, record is now [5, 10].
 "+" - Add 5 + 10 = 15 to the record, record is now [5, 10, 15].
 The total sum is 5 + 10 + 15 = 30.

 Example 2:
 Input: ops = ["5","-2","4","C","D","9","+","+"]
 Output: 27
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "-2" - Add -2 to the record, record is now [5, -2].
 "4" - Add 4 to the record, record is now [5, -2, 4].
 "C" - Invalidate and remove the previous score, record is now [5, -2].
 "D" - Add 2 * -2 = -4 to the record, record is now [5, -2, -4].
 "9" - Add 9 to the record, record is now [5, -2, -4, 9].
 "+" - Add -4 + 9 = 5 to the record, record is now [5, -2, -4, 9, 5].
 "+" - Add 9 + 5 = 14 to the record, record is now [5, -2, -4, 9, 5, 14].
 The total sum is 5 + -2 + -4 + 9 + 5 + 14 = 27.

 Example 3:
 Input: ops = ["1","C"]
 Output: 0
 Explanation:
 "1" - Add 1 to the record, record is now [1].
 "C" - Invalidate and remove the previous score, record is now [].
 Since the record is empty, the total sum is 0.

## 1209. Remove All Adjacent Duplicates in String II
 https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/description/

 You are given a string s and an integer k, a k duplicate removal consists of choosing k adjacent and equal letters from s and removing them, causing the left and the right side of the deleted substring to concatenate together.

 We repeatedly make k duplicate removals on s until we no longer can.

 Return the final string after all such duplicate removals have been made. It is guaranteed that the answer is unique.

 Example 1:
 Input: s = "abcd", k = 2
 Output: "abcd"
 Explanation: There's nothing to delete.

 Example 2:
 Input: s = "deeedbbcccbdaa", k = 3
 Output: "aa"
 Explanation:
 First delete "eee" and "ccc", get "ddbbbdaa"
 Then delete "bbb", get "dddaa"
 Finally delete "ddd", get "aa"

 Example 3:
 Input: s = "pbbcggttciiippooaais", k = 2
 Output: "ps"

## 456. 132 Pattern
 https://leetcode.com/problems/132-pattern/description/

 Given an array of n integers nums, a 132 pattern is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].

 Return true if there is a 132 pattern in nums, otherwise, return false.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: false
 Explanation: There is no 132 pattern in the sequence.

 Example 2:
 Input: nums = [3,1,4,2]
 Output: true
 Explanation: There is a 132 pattern in the sequence: [1, 4, 2].

 Example 3:
 Input: nums = [-1,3,2,0]
 Output: true
 Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].
