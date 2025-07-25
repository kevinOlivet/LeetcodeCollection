# LeetcodeCollection: Neetcode 150
Algorithms not covered elsewhere

 ## 36. Valid Sudoku
 https://leetcode.com/problems/valid-sudoku/description/

 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.

 Example 1:
 Input: board =
 [["5","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: true

 Example 2:
 Input: board =
 [["8","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

 ## 42. Trapping Rain Water
 https://leetcode.com/problems/trapping-rain-water/description/

 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

 Example 1:
 Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

 Example 2:
 Input: height = [4,2,0,3,2,5]
 Output: 9

 ## 567. Permutation in String
 https://leetcode.com/problems/permutation-in-string/description/

 Given two strings s1 and s2, return true if s2 contains a
 permutation
  of s1, or false otherwise.

 In other words, return true if one of s1's permutations is the substring of s2.

 Example 1:
 Input: s1 = "ab", s2 = "eidbaooo"
 Output: true
 Explanation: s2 contains one permutation of s1 ("ba").

 Example 2:
 Input: s1 = "ab", s2 = "eidboaoo"
 Output: false

 ## 239. Sliding Window Maximum
 https://leetcode.com/problems/sliding-window-maximum/description/

 You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

 Return the max sliding window.

 Example 1:
 Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
 Output: [3,3,5,5,6,7]
 Explanation:
 Window position                Max
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
  1 [3  -1  -3] 5  3  6  7       3
  1  3 [-1  -3  5] 3  6  7       5
  1  3  -1 [-3  5  3] 6  7       5
  1  3  -1  -3 [5  3  6] 7       6
  1  3  -1  -3  5 [3  6  7]      7

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

 ## 74. Search a 2D Matrix
 https://leetcode.com/problems/search-a-2d-matrix/description/

 You are given an m x n integer matrix matrix with the following two properties:

 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.

 Example 1:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
 Output: true

 Example 2:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
 Output: false

 ## 875. Koko Eating Bananas
 https://leetcode.com/problems/koko-eating-bananas/description/

 Koko loves to eat bananas. There are n piles of bananas, the ith pile has piles[i] bananas. The guards have gone and will come back in h hours.

 Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses some pile of bananas and eats k bananas from that pile. If the pile has less than k bananas, she eats all of them instead and will not eat any more bananas during this hour.

 Koko likes to eat slowly but still wants to finish eating all the bananas before the guards return.

 Return the minimum integer k such that she can eat all the bananas within h hours.

 Example 1:
 Input: piles = [3,6,7,11], h = 8
 Output: 4

 Example 2:
 Input: piles = [30,11,23,4,20], h = 5
 Output: 30

 Example 3:
 Input: piles = [30,11,23,4,20], h = 6
 Output: 23

 ## 981. Time Based Key-Value Store
 https://leetcode.com/problems/time-based-key-value-store/description/

 Design a time-based key-value data structure that can store multiple values for the same key at different time stamps and retrieve the key's value at a certain timestamp.

 Implement the TimeMap class:

 TimeMap() Initializes the object of the data structure.
 void set(String key, String value, int timestamp) Stores the key key with the value value at the given time timestamp.
 String get(String key, int timestamp) Returns a value such that set was called previously, with timestamp_prev <= timestamp. If there are multiple such values, it returns the value associated with the largest timestamp_prev. If there are no values, it returns "".


 Example 1:
 Input
 ["TimeMap", "set", "get", "get", "set", "get", "get"]
 [[], ["foo", "bar", 1], ["foo", 1], ["foo", 3], ["foo", "bar2", 4], ["foo", 4], ["foo", 5]]
 Output
 [null, null, "bar", "bar", null, "bar2", "bar2"]

 Explanation
 TimeMap timeMap = new TimeMap();
 timeMap.set("foo", "bar", 1);  // store the key "foo" and value "bar" along with timestamp = 1.
 timeMap.get("foo", 1);         // return "bar"
 timeMap.get("foo", 3);         // return "bar", since there is no value corresponding to foo at timestamp 3 and timestamp 2, then the only value is at timestamp 1 is "bar".
 timeMap.set("foo", "bar2", 4); // store the key "foo" and value "bar2" along with timestamp = 4.
 timeMap.get("foo", 4);         // return "bar2"
 timeMap.get("foo", 5);         // return "bar2"

 NOTE!!: - All the timestamps timestamp of set are strictly increasing.

 ## 4. Median of Two Sorted Arrays
 NOTE: binary search didn't work, but O(m + n) works
 https://leetcode.com/problems/median-of-two-sorted-arrays/description/

 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

 Example 1:
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.

 Example 2:
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

 ## 138. Copy List with Random Pointer
 https://leetcode.com/problems/copy-list-with-random-pointer/description/

 NOTE: Can be solved in two passes or using func cloneGraph with dfs

 A linked list of length n is given such that each node contains an additional random pointer, which could point to any node in the list, or null.

 Construct a deep copy of the list. The deep copy should consist of exactly n brand new nodes, where each new node has its value set to the value of its corresponding original node. Both the next and random pointer of the new nodes should point to new nodes in the copied list such that the pointers in the original list and copied list represent the same list state. None of the pointers in the new list should point to nodes in the original list.

 For example, if there are two nodes X and Y in the original list, where X.random --> Y, then for the corresponding two nodes x and y in the copied list, x.random --> y.

 Return the head of the copied linked list.

 The linked list is represented in the input/output as a list of n nodes. Each node is represented as a pair of [val, random_index] where:

 val: an integer representing Node.val
 random_index: the index of the node (range from 0 to n-1) that the random pointer points to, or null if it does not point to any node.
 Your code will only be given the head of the original linked list.

 Example 1:
 Input: head = [[7,null],[13,0],[11,4],[10,2],[1,0]]
 Output: [[7,null],[13,0],[11,4],[10,2],[1,0]]

 Example 2:
 Input: head = [[1,1],[2,1]]
 Output: [[1,1],[2,1]]

 Example 3:
 Input: head = [[3,null],[3,0],[3,null]]
 Output: [[3,null],[3,0],[3,null]]

 ## 2. Add Two Numbers
 https://leetcode.com/problems/add-two-numbers/description/

 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 Example 1:
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.

 Example 2:
 Input: l1 = [0], l2 = [0]
 Output: [0]

 Example 3:
 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]

 ## 146. LRU Cache
 https://leetcode.com/problems/lru-cache/description/

 Design a data structure that follows the constraints of a Least Recently Used (LRU) cache.

 Implement the LRUCache class:

 LRUCache(int capacity) Initialize the LRU cache with positive size capacity.
 int get(int key) Return the value of the key if the key exists, otherwise return -1.
 void put(int key, int value) Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key.
 The functions get and put must each run in O(1) average time complexity.

 Example 1:
 Input
 ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
 [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
 Output
 [null, null, null, 1, null, -1, null, -1, 3, 4]

 Explanation
 LRUCache lRUCache = new LRUCache(2);
 lRUCache.put(1, 1); // cache is {1=1}
 lRUCache.put(2, 2); // cache is {1=1, 2=2}
 lRUCache.get(1);    // return 1
 lRUCache.put(3, 3); // LRU key was 2, evicts key 2, cache is {1=1, 3=3}
 lRUCache.get(2);    // returns -1 (not found)
 lRUCache.put(4, 4); // LRU key was 1, evicts key 1, cache is {4=4, 3=3}
 lRUCache.get(1);    // return -1 (not found)
 lRUCache.get(3);    // return 3
 lRUCache.get(4);    // return 4

 ## 25. Reverse Nodes in k-Group
 https://leetcode.com/problems/reverse-nodes-in-k-group/description/

 Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.

 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.

 You may not alter the values in the list's nodes, only nodes themselves may be changed.

 Example 1:
 Input: head = [1,2,3,4,5], k = 2
 Output: [2,1,4,3,5]

 Example 2:
 Input: head = [1,2,3,4,5], k = 3
 Output: [3,2,1,4,5]

 ## 543. Diameter of Binary Tree
 https://leetcode.com/problems/diameter-of-binary-tree/description/

 Given the root of a binary tree, return the length of the diameter of the tree.

 The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

 The length of a path between two nodes is represented by the number of edges between them.

 Example 1:
 Input: root = [1,2,3,4,5]
 Output: 3
 Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

 Example 2:
 Input: root = [1,2]
 Output: 1

 ## 110. Balanced Binary Tree
 https://leetcode.com/problems/balanced-binary-tree/description/

 Given a binary tree, determine if it is height-balanced.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: true

 Example 2:
 Input: root = [1,2,2,3,3,null,null,4,4]
 Output: false

 Example 3:
 Input: root = []
 Output: true

 ## 199. Binary Tree Right Side View
 Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

 Example 1:
 Input: root = [1,2,3,null,5,null,4]
 Output: [1,3,4]
 Explanation:

 Example 2:
 Input: root = [1,2,3,4,null,null,null,5]
 Output: [1,3,4,5]
 Explanation:

 Example 3:
 Input: root = [1,null,3]
 Output: [1,3]

 Example 4:
 Input: root = []
 Output: []

 ## 1448. Count Good Nodes in Binary Tree
 https://leetcode.com/problems/count-good-nodes-in-binary-tree/description/

 Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.

 Return the number of good nodes in the binary tree.

 Example 1:
 Input: root = [3,1,4,3,null,1,5]
 Output: 4
 Explanation: Nodes in blue are good.
 Root Node (3) is always a good node.
 Node 4 -> (3,4) is the maximum value in the path starting from the root.
 Node 5 -> (3,4,5) is the maximum value in the path
 Node 3 -> (3,1,3) is the maximum value in the path.

 Example 2:
 Input: root = [3,3,null,4,2]
 Output: 3
 Explanation: Node 2 -> (3, 3, 2) is not good, because "3" is higher than it.

 Example 3:
 Input: root = [1]
 Output: 1
 Explanation: Root is considered as good.

 ## 703. Kth Largest Element in a Stream
 https://leetcode.com/problems/kth-largest-element-in-a-stream/description/

 You are part of a university admissions office and need to keep track of the kth highest test score from applicants in real-time. This helps to determine cut-off marks for interviews and admissions dynamically as new applicants submit their scores.

 You are tasked to implement a class which, for a given integer k, maintains a stream of test scores and continuously returns the kth highest test score after a new score has been submitted. More specifically, we are looking for the kth highest score in the sorted list of all scores.

 Implement the KthLargest class:

 KthLargest(int k, int[] nums) Initializes the object with the integer k and the stream of test scores nums.
 int add(int val) Adds a new test score val to the stream and returns the element representing the kth largest element in the pool of test scores so far.

 Example 1:
 Input:
 ["KthLargest", "add", "add", "add", "add", "add"]
 [[3, [4, 5, 8, 2]], [3], [5], [10], [9], [4]]

 Output: [null, 4, 5, 5, 8, 8]

 Explanation:
 KthLargest kthLargest = new KthLargest(3, [4, 5, 8, 2]);
 kthLargest.add(3); // return 4
 kthLargest.add(5); // return 5
 kthLargest.add(10); // return 5
 kthLargest.add(9); // return 8
 kthLargest.add(4); // return 8

 Example 2:
 Input:
 ["KthLargest", "add", "add", "add", "add"]
 [[4, [7, 7, 7, 7, 8, 3]], [2], [10], [9], [9]]

 Output: [null, 7, 7, 7, 8]

 Explanation:

 KthLargest kthLargest = new KthLargest(4, [7, 7, 7, 7, 8, 3]);
 kthLargest.add(2); // return 7
 kthLargest.add(10); // return 7
 kthLargest.add(9); // return 7
 kthLargest.add(9); // return 8

 ## 1046. Last Stone Weight
 https://leetcode.com/problems/last-stone-weight/description/

 You are given an array of integers stones where stones[i] is the weight of the ith stone.

 We are playing a game with the stones. On each turn, we choose the heaviest two stones and smash them together. Suppose the heaviest two stones have weights x and y with x <= y. The result of this smash is:

 If x == y, both stones are destroyed, and
 If x != y, the stone of weight x is destroyed, and the stone of weight y has new weight y - x.
 At the end of the game, there is at most one stone left.

 Return the weight of the last remaining stone. If there are no stones left, return 0.

 Example 1:
 Input: stones = [2,7,4,1,8,1]
 Output: 1
 Explanation:
 We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
 we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
 we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
 we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of the last stone.

 Example 2:
 Input: stones = [1]
 Output: 1

 ## 973. K Closest Points to Origin
 https://leetcode.com/problems/k-closest-points-to-origin/description/

 Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

 The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

 You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).

 Example 1:
 Input: points = [[1,3],[-2,2]], k = 1
 Output: [[-2,2]]
 Explanation:
 The distance between (1, 3) and the origin is sqrt(10).
 The distance between (-2, 2) and the origin is sqrt(8).
 Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
 We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].

 Example 2:
 Input: points = [[3,3],[5,-1],[-2,4]], k = 2
 Output: [[3,3],[-2,4]]
 Explanation: The answer [[-2,4],[3,3]] would also be accepted.

 ## 621. Task Scheduler
 https://leetcode.com/problems/task-scheduler/description/

 You are given an array of CPU tasks, each labeled with a letter from A to Z, and a number n. Each CPU interval can be idle or allow the completion of one task. Tasks can be completed in any order, but there's a constraint: there has to be a gap of at least n intervals between two tasks with the same label.

 Return the minimum number of CPU intervals required to complete all tasks.

 Example 1:
 Input: tasks = ["A","A","A","B","B","B"], n = 2
 Output: 8
 Explanation: A possible sequence is: A -> B -> idle -> A -> B -> idle -> A -> B.
 After completing task A, you must wait two intervals before doing A again. The same applies to task B. In the 3rd interval, neither A nor B can be done, so you idle. By the 4th interval, you can do A again as 2 intervals have passed.

 Example 2:
 Input: tasks = ["A","C","A","B","D","B"], n = 1
 Output: 6
 Explanation: A possible sequence is: A -> B -> C -> D -> A -> B.
 With a cooling interval of 1, you can repeat a task after just one other task.

 Example 3:
 Input: tasks = ["A","A","A", "B","B","B"], n = 3
 Output: 10
 Explanation: A possible sequence is: A -> B -> idle -> idle -> A -> B -> idle -> idle -> A -> B.
 There are only two types of tasks, A and B, which need to be separated by 3 intervals. This leads to idling twice between repetitions of these tasks.

 ## 355. Design Twitter
 https://leetcode.com/problems/design-twitter/description/

 Design a simplified version of Twitter where users can post tweets, follow/unfollow another user, and is able to see the 10 most recent tweets in the user's news feed.

 Implement the Twitter class:

 Twitter() Initializes your twitter object.
 void postTweet(int userId, int tweetId) Composes a new tweet with ID tweetId by the user userId. Each call to this function will be made with a unique tweetId.
 List<Integer> getNewsFeed(int userId) Retrieves the 10 most recent tweet IDs in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user themself. Tweets must be ordered from most recent to least recent.
 void follow(int followerId, int followeeId) The user with ID followerId started following the user with ID followeeId.
 void unfollow(int followerId, int followeeId) The user with ID followerId started unfollowing the user with ID followeeId.

 Example 1:
 Input
 ["Twitter", "postTweet", "getNewsFeed", "follow", "postTweet", "getNewsFeed", "unfollow", "getNewsFeed"]
 [[], [1, 5], [1], [1, 2], [2, 6], [1], [1, 2], [1]]
 Output
 [null, null, [5], null, null, [6, 5], null, [5]]

 Explanation
 Twitter twitter = new Twitter();
 twitter.postTweet(1, 5); // User 1 posts a new tweet (id = 5).
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5]. return [5]
 twitter.follow(1, 2);    // User 1 follows user 2.
 twitter.postTweet(2, 6); // User 2 posts a new tweet (id = 6).
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 2 tweet ids -> [6, 5]. Tweet id 6 should precede tweet id 5 because it is posted after tweet id 5.
 twitter.unfollow(1, 2);  // User 1 unfollows user 2.
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5], since user 1 is no longer following user 2.

 ## 286. Walls and Gates or lintCode 663. Walls and Gates
 Leetcode requires subscription for this
 https://www.lintcode.com/problem/663/

 You are given a m x n 2D grid initialized with these three possible values.
 -1 = A wall or an obstacle.
 0 = A gate.
 INF = Infinity means an empty room. We use the value 2^31 - 1 = 2147483647 to represent INF as you may assume that the distance to a gate is less than 2147483647.
 Fill each empty room with the distance to its nearest gate. If it is impossible to reach a Gate, that room should remain filled with INF

 Example1:
 Input:
 [
 [2147483647,-1,0,2147483647],
 [2147483647,2147483647,2147483647,-1],
 [2147483647,-1,2147483647,-1],
 [0,-1,2147483647,2147483647]
 ]
 Output:
 [
 [3,-1,0,1],
 [2,2,1,-1],
 [1,-1,2,-1],
 [0,-1,3,4]
 ]

 Explanation:
 the 2D grid is:

 INF -1 0 INF
 INF INF INF -1
 INF -1 INF -1
 0 -1 INF INF

 the answer is:
 3 -1 0 1
 2 2 1 -1
 1 -1 2 -1
 0 -1 3 4

 Example2
 Input:
 [
 [0,-1],
 [2147483647,2147483647]
 ]
 Output:
 [
 [0,-1],
 [1,2]
 ]

 ## 178. Graph Valid Tree
 Leetcode requires subscription for it so the link is to Neetcode page
 https://neetcode.io/problems/valid-tree

 Given n nodes labeled from 0 to n - 1 and a list of undirected edges (each edge is a pair of nodes), write a function to check whether these edges make up a valid tree.

 Example 1:
 Input:
 n = 5
 edges = [[0, 1], [0, 2], [0, 3], [1, 4]]
 Output:
 true

 Example 2:
 Input:
 n = 5
 edges = [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]
 Output:
 false

 Note:
 You can assume that no duplicate edges will appear in edges. Since all edges are undirected, [0, 1] is the same as [1, 0] and thus will not appear together in edges.

 ## 323. Number of Connected Components in an Undirected Graph
 Leetcode requires subscription for this so link is to NeetCode
 https://neetcode.io/problems/count-connected-components

 There is an undirected graph with n nodes. There is also an edges array, where edges[i] = [a, b] means that there is an edge between node a and node b in the graph.

 The nodes are numbered from 0 to n - 1.

 Return the total number of connected components in that graph.

 Example 1:
 Input:
 n=3
 edges=[[0,1], [0,2]]
 Output: 1

 Example 2:
 Input:
 n=6
 edges=[[0,1], [1,2], [2,3], [4,5]]
 Output: 2

 ## 684. Redundant Connection
 https://leetcode.com/problems/redundant-connection/description/

 In this problem, a tree is an undirected graph that is connected and has no cycles.

 You are given a graph that started as a tree with n nodes labeled from 1 to n, with one additional edge added. The added edge has two different vertices chosen from 1 to n, and was not an edge that already existed. The graph is represented as an array edges of length n where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the graph.

 Return an edge that can be removed so that the resulting graph is a tree of n nodes. If there are multiple answers, return the answer that occurs last in the input.

 Example 1:
 Input: edges = [[1,2],[1,3],[2,3]]
 Output: [2,3]

 Example 2:
 Input: edges = [[1,2],[2,3],[3,4],[1,4],[1,5]]
 Output: [1,4]

 ## 743. Network Delay Time
 https://leetcode.com/problems/network-delay-time/description/
 NOTE: Doesn't use neetcode Dijkstra's Algorithm,
    Uses Bellman-Ford Algorithm

 You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of travel times as directed edges times[i] = (ui, vi, wi), where ui is the source node, vi is the target node, and wi is the time it takes for a signal to travel from source to target.

 We will send a signal from a given node k. Return the minimum time it takes for all the n nodes to receive the signal. If it is impossible for all the n nodes to receive the signal, return -1.

 Example 1:
 Input: times = [[2,1,1],[2,3,1],[3,4,1]], n = 4, k = 2
 Output: 2

 Example 2:
 Input: times = [[1,2,1]], n = 2, k = 1
 Output: 1

 Example 3:
 Input: times = [[1,2,1]], n = 2, k = 2
 Output: -1

 ## 1584. Min Cost to Connect All Points
 https://leetcode.com/problems/min-cost-to-connect-all-points/description/
 NOTE: Uses a modified Prim's algorithm
  MST = Minimum Spanning Tree

 You are given an array points representing integer coordinates of some points on a 2D-plane, where points[i] = [xi, yi].

 The cost of connecting two points [xi, yi] and [xj, yj] is the manhattan distance between them: |xi - xj| + |yi - yj|, where |val| denotes the absolute value of val.

 Return the minimum cost to make all points connected. All points are connected if there is exactly one simple path between any two points.

 Example 1:
 Input: points = [[0,0],[2,2],[3,10],[5,2],[7,0]]
 Output: 20
 Explanation:
 We can connect the points as shown above to get the minimum cost of 20.
 Notice that there is a unique path between every pair of points.

 Example 2:
 Input: points = [[3,12],[-2,5],[-4,1]]
 Output: 18

 ## 778. Swim in Rising Water
 https://leetcode.com/problems/swim-in-rising-water/description/

 You are given an n x n integer matrix grid where each value grid[i][j] represents the elevation at that point (i, j).

 The rain starts to fall. At time t, the depth of the water everywhere is t. You can swim from a square to another 4-directionally adjacent square if and only if the elevation of both squares individually are at most t. You can swim infinite distances in zero time. Of course, you must stay within the boundaries of the grid during your swim.

 Return the least time until you can reach the bottom right square (n - 1, n - 1) if you start at the top left square (0, 0).

 Example 1:
 Input: grid = [[0,2],[1,3]]
 Output: 3
 Explanation:
 At time 0, you are in grid location (0, 0).
 You cannot go anywhere else because 4-directionally adjacent neighbors have a higher elevation than t = 0.
 You cannot reach point (1, 1) until time 3.
 When the depth of water is 3, we can swim anywhere inside the grid.

 Example 2:
 Input: grid = [[0,1,2,3,4],[24,23,22,21,5],[12,13,14,15,16],[11,17,18,19,20],[10,9,8,7,6]]
 Output: 16
 Explanation: The final route is shown.
 We need to wait until time 16 so that (0, 0) and (4, 4) are connected.

 ## 269. Alien Dictionary
 https://neetcode.io/problems/foreign-dictionary
 NOTE: Leetcode requires subscription so this links to Neetcode website
 Topological Sort

 There is a foreign language which uses the latin alphabet, but the order among letters is not "a", "b", "c" ... "z" as in English.

 You receive a list of non-empty strings words from the dictionary, where the words are sorted lexicographically based on the rules of this new language.

 Derive the order of letters in this language. If the order is invalid, return an empty string. If there are multiple valid order of letters, return any of them.

 A string a is lexicographically smaller than a string b if either of the following is true:

 The first letter where they differ is smaller in a than in b.
 There is no index i such that a[i] != b[i] and a.length < b.length.

 Example 1:
 Input: ["z","o"]
 Output: "zo"
 Explanation:
 From "z" and "o", we know 'z' < 'o', so return "zo".

 Example 2:
 Input: ["hrn","hrf","er","enn","rfnn"]
 Output: "hernf"
 Explanation:
 from "hrn" and "hrf", we know 'n' < 'f'
 from "hrf" and "er", we know 'h' < 'e'
 from "er" and "enn", we know get 'r' < 'n'
 from "enn" and "rfnn" we know 'e'<'r'
 so one possibile solution is "hernf"

 ## 787. Cheapest Flights Within K Stops
 https://leetcode.com/problems/cheapest-flights-within-k-stops/description/

 There are n cities connected by some number of flights. You are given an array flights where flights[i] = [fromi, toi, pricei] indicates that there is a flight from city fromi to city toi with cost pricei.

 You are also given three integers src, dst, and k, return the cheapest price from src to dst with at most k stops. If there is no such route, return -1.

 Example 1:
 Input: n = 4, flights = [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], src = 0, dst = 3, k = 1
 Output: 700
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 3 is marked in red and has cost 100 + 600 = 700.
 Note that the path through cities [0,1,2,3] is cheaper but is invalid because it uses 2 stops.

 Example 2:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 1
 Output: 200
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 2 is marked in red and has cost 100 + 100 = 200.

 Example 3:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 0
 Output: 500
 Explanation:
 The graph is shown above.
 The optimal path with no stops from city 0 to 2 is marked in red and has cost 500.

 ## 115. Distinct Subsequences
 https://leetcode.com/problems/distinct-subsequences/description/

 Given two strings s and t, return the number of distinct subsequences of s which equals t.

 The test cases are generated so that the answer fits on a 32-bit signed integer.

 Example 1:
 Input: s = "rabbbit", t = "rabbit"
 Output: 3
 Explanation:
 As shown below, there are 3 ways you can generate "rabbit" from s.
 rabbbit
 rabbbit
 rabbbit

 Example 2:
 Input: s = "babgbag", t = "bag"
 Output: 5
 Explanation:
 As shown below, there are 5 ways you can generate "bag" from s.
 babgbag
 babgbag
 babgbag
 babgbag
 babgbag

 ## 329. Longest Increasing Path in a Matrix
 https://leetcode.com/problems/longest-increasing-path-in-a-matrix/description/

 Given an m x n integers matrix, return the length of the longest increasing path in matrix.

 From each cell, you can either move in four directions: left, right, up, or down. You may not move diagonally or move outside the boundary (i.e., wrap-around is not allowed).

 Example 1:
 Input: matrix = [[9,9,4],[6,6,8],[2,1,1]]
 Output: 4
 Explanation: The longest increasing path is [1, 2, 6, 9].

 Example 2:
 Input: matrix = [[3,4,5],[3,2,6],[2,2,1]]
 Output: 4
 Explanation: The longest increasing path is [3, 4, 5, 6]. Moving diagonally is not allowed.

 Example 3:
 Input: matrix = [[1]]
 Output: 1

 ## 72. Edit Distance
 https://leetcode.com/problems/edit-distance/description/

 Given two strings word1 and word2, return the minimum number of operations required to convert word1 to word2.

 You have the following three operations permitted on a word:

 Insert a character
 Delete a character
 Replace a character

 Example 1:
 Input: word1 = "horse", word2 = "ros"
 Output: 3
 Explanation:
 horse -> rorse (replace 'h' with 'r')
 rorse -> rose (remove 'r')
 rose -> ros (remove 'e')

 Example 2:
 Input: word1 = "intention", word2 = "execution"
 Output: 5
 Explanation:
 intention -> inention (remove 't')
 inention -> enention (replace 'i' with 'e')
 enention -> exention (replace 'n' with 'x')
 exention -> exection (replace 'n' with 'c')
 exection -> execution (insert 'u')

 ## 134. Gas Station
 https://leetcode.com/problems/gas-station/description/

 There are n gas stations along a circular route, where the amount of gas at the ith station is gas[i].

 You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from the ith station to its next (i + 1)th station. You begin the journey with an empty tank at one of the gas stations.

 Given two integer arrays gas and cost, return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. If there exists a solution, it is guaranteed to be unique.

 Example 1:
 Input: gas = [1,2,3,4,5], cost = [3,4,5,1,2]
 Output: 3
 Explanation:
 Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
 Travel to station 4. Your tank = 4 - 1 + 5 = 8
 Travel to station 0. Your tank = 8 - 2 + 1 = 7
 Travel to station 1. Your tank = 7 - 3 + 2 = 6
 Travel to station 2. Your tank = 6 - 4 + 3 = 5
 Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
 Therefore, return 3 as the starting index.

 Example 2:
 Input: gas = [2,3,4], cost = [3,4,3]
 Output: -1
 Explanation:
 You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
 Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
 Travel to station 0. Your tank = 4 - 3 + 2 = 3
 Travel to station 1. Your tank = 3 - 3 + 3 = 3
 You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
 Therefore, you can't travel around the circuit once no matter where you start.

 ## 846. Hand of Straights
 https://leetcode.com/problems/hand-of-straights/description/

 Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.

 Given an integer array hand where hand[i] is the value written on the ith card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.

 Example 1:
 Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
 Output: true
 Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]

 Example 2:
 Input: hand = [1,2,3,4,5], groupSize = 4
 Output: false
 Explanation: Alice's hand can not be rearranged into groups of 4.

 ## 1899. Merge Triplets to Form Target Triplet
 https://leetcode.com/problems/merge-triplets-to-form-target-triplet/description/

 A triplet is an array of three integers. You are given a 2D integer array triplets, where triplets[i] = [ai, bi, ci] describes the ith triplet. You are also given an integer array target = [x, y, z] that describes the triplet you want to obtain.

 To obtain target, you may apply the following operation on triplets any number of times (possibly zero):

 Choose two indices (0-indexed) i and j (i != j) and update triplets[j] to become [max(ai, aj), max(bi, bj), max(ci, cj)].
 For example, if triplets[i] = [2, 5, 3] and triplets[j] = [1, 7, 5], triplets[j] will be updated to [max(2, 1), max(5, 7), max(3, 5)] = [2, 7, 5].
 Return true if it is possible to obtain the target triplet [x, y, z] as an element of triplets, or false otherwise.

 Example 1:
 Input: triplets = [[2,5,3],[1,8,4],[1,7,5]], target = [2,7,5]
 Output: true
 Explanation: Perform the following operations:
 - Choose the first and last triplets [[2,5,3],[1,8,4],[1,7,5]]. Update the last triplet to be [max(2,1), max(5,7), max(3,5)] = [2,7,5]. triplets = [[2,5,3],[1,8,4],[2,7,5]]
 The target triplet [2,7,5] is now an element of triplets.

 Example 2:
 Input: triplets = [[3,4,5],[4,5,6]], target = [3,2,5]
 Output: false
 Explanation: It is impossible to have [3,2,5] as an element because there is no 2 in any of the triplets.

 Example 3:
 Input: triplets = [[2,5,3],[2,3,4],[1,2,5],[5,2,3]], target = [5,5,5]
 Output: true
 Explanation: Perform the following operations:
 - Choose the first and third triplets [[2,5,3],[2,3,4],[1,2,5],[5,2,3]]. Update the third triplet to be [max(2,1), max(5,2), max(3,5)] = [2,5,5]. triplets = [[2,5,3],[2,3,4],[2,5,5],[5,2,3]].
 - Choose the third and fourth triplets [[2,5,3],[2,3,4],[2,5,5],[5,2,3]]. Update the fourth triplet to be [max(2,5), max(5,2), max(5,3)] = [5,5,5]. triplets = [[2,5,3],[2,3,4],[2,5,5],[5,5,5]].
 The target triplet [5,5,5] is now an element of triplets.

 ## 763. Partition Labels
 https://leetcode.com/problems/partition-labels/description/

 You are given a string s. We want to partition the string into as many parts as possible so that each letter appears in at most one part. For example, the string "ababcc" can be partitioned into ["abab", "cc"], but partitions such as ["aba", "bcc"] or ["ab", "ab", "cc"] are invalid.

 Note that the partition is done so that after concatenating all the parts in order, the resultant string should be s.

 Return a list of integers representing the size of these parts.

 Example 1:
 Input: s = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts.

 Example 2:
 Input: s = "eccbbbbdec"
 Output: [10]

 ## 678. Valid Parenthesis String
 https://leetcode.com/problems/valid-parenthesis-string/description/

 Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.

 The following rules define a valid string:

 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "(*)"
 Output: true

 Example 3:
 Input: s = "(*))"
 Output: true

 ## 1851. Minimum Interval to Include Each Query
 https://leetcode.com/problems/minimum-interval-to-include-each-query/description/

 You are given a 2D integer array intervals, where intervals[i] = [lefti, righti] describes the ith interval starting at lefti and ending at righti (inclusive). The size of an interval is defined as the number of integers it contains, or more formally righti - lefti + 1.

 You are also given an integer array queries. The answer to the jth query is the size of the smallest interval i such that lefti <= queries[j] <= righti. If no such interval exists, the answer is -1.

 Return an array containing the answers to the queries.

 Example 1:
 Input: intervals = [[1,4],[2,4],[3,6],[4,4]], queries = [2,3,4,5]
 Output: [3,3,1,4]
 Explanation: The queries are processed as follows:
 - Query = 2: The interval [2,4] is the smallest interval containing 2. The answer is 4 - 2 + 1 = 3.
 - Query = 3: The interval [2,4] is the smallest interval containing 3. The answer is 4 - 2 + 1 = 3.
 - Query = 4: The interval [4,4] is the smallest interval containing 4. The answer is 4 - 4 + 1 = 1.
 - Query = 5: The interval [3,6] is the smallest interval containing 5. The answer is 6 - 3 + 1 = 4.

 Example 2:
 Input: intervals = [[2,3],[2,5],[1,8],[20,25]], queries = [2,19,5,22]
 Output: [2,-1,4,6]
 Explanation: The queries are processed as follows:
 - Query = 2: The interval [2,3] is the smallest interval containing 2. The answer is 3 - 2 + 1 = 2.
 - Query = 19: None of the intervals contain 19. The answer is -1.
 - Query = 5: The interval [2,5] is the smallest interval containing 5. The answer is 5 - 2 + 1 = 4.
 - Query = 22: The interval [20,25] is the smallest interval containing 22. The answer is 25 - 20 + 1 = 6.

 ## 66. Plus One
 https://leetcode.com/problems/plus-one/description/

 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

 Increment the large integer by one and return the resulting array of digits.

 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].

 Example 2:
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 Incrementing by one gives 4321 + 1 = 4322.
 Thus, the result should be [4,3,2,2].

 Example 3:
 Input: digits = [9]
 Output: [1,0]
 Explanation: The array represents the integer 9.
 Incrementing by one gives 9 + 1 = 10.
 Thus, the result should be [1,0].

 ## 43. Multiply Strings
 https://leetcode.com/problems/multiply-strings/description/

 Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

 Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

 Example 1:
 Input: num1 = "2", num2 = "3"
 Output: "6"

 Example 2:
 Input: num1 = "123", num2 = "456"
 Output: "56088"

 ## 2013. Detect Squares
 https://leetcode.com/problems/detect-squares/description/

 You are given a stream of points on the X-Y plane. Design an algorithm that:

 Adds new points from the stream into a data structure. Duplicate points are allowed and should be treated as different points.
 Given a query point, counts the number of ways to choose three points from the data structure such that the three points and the query point form an axis-aligned square with positive area.
 An axis-aligned square is a square whose edges are all the same length and are either parallel or perpendicular to the x-axis and y-axis.

 Implement the DetectSquares class:

 DetectSquares() Initializes the object with an empty data structure.
 void add(int[] point) Adds a new point point = [x, y] to the data structure.
 int count(int[] point) Counts the number of ways to form axis-aligned squares with point point = [x, y] as described above.

 Example 1:
 Input
 ["DetectSquares", "add", "add", "add", "count", "count", "add", "count"]
 [[], [[3, 10]], [[11, 2]], [[3, 2]], [[11, 10]], [[14, 8]], [[11, 2]], [[11, 10]]]
 Output
 [null, null, null, null, 1, 0, null, 2]

 Explanation
 DetectSquares detectSquares = new DetectSquares();
 detectSquares.add([3, 10]);
 detectSquares.add([11, 2]);
 detectSquares.add([3, 2]);
 detectSquares.count([11, 10]); // return 1. You can choose:
                                //   - The first, second, and third points
 detectSquares.count([14, 8]);  // return 0. The query point cannot form a square with any points in the data structure.
 detectSquares.add([11, 2]);    // Adding duplicate points is allowed.
 detectSquares.count([11, 10]); // return 2. You can choose:
                                //   - The first, second, and third points
                                //   - The first, third, and fourth points

 ## 7. Reverse Integer
 https://leetcode.com/problems/reverse-integer/description/

 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 Example 1:
 Input: x = 123
 Output: 321

 Example 2:
 Input: x = -123
 Output: -321

 Example 3:
 Input: x = 120
 Output: 21
