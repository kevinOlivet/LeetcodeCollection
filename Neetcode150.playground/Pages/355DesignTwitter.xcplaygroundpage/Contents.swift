import Foundation

/*
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
 */

struct Tweet {
    var index: Int
    var tweetId: Int
    init(_ index: Int, _ tweetId: Int) {
        self.index = index
        self.tweetId = tweetId
    }
}
class Twitter {
    var tweets = [Int: [Tweet]] ()
    var follows = [Int: Set<Int>] ()
    var index = 0
    init() {}
    func postTweet(_ userId: Int, _ tweetId: Int) {
        tweets[userId, default: []].append(Tweet(index, tweetId))
        index += 1
    }
    func getNewsFeed(_ userId: Int) -> [Int] {
        var allTweets = tweets[userId, default: []]
        for follower in follows[userId, default: []] {
            allTweets += tweets[follower, default: []]
        }
        return allTweets.sorted { $0.index > $1.index }
            .prefix(10).map { $0.tweetId }
    }
    func follow(_ followerId: Int, _ followeeId: Int) {
        follows[followerId, default: []].insert(followeeId)
    }
    func unfollow(_ followerId: Int, _ followeeId: Int) {
        follows[followerId, default: []].remove(followeeId)
    }
}

let twitter = Twitter();
twitter.postTweet(1, 5); // User 1 posts a new tweet (id = 5).
twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5]. return [5]
twitter.follow(1, 2);    // User 1 follows user 2.
twitter.postTweet(2, 6); // User 2 posts a new tweet (id = 6).
twitter.getNewsFeed(1);  // User 1's news feed should return a list with 2 tweet ids -> [6, 5]. Tweet id 6 should precede tweet id 5 because it is posted after tweet id 5.
twitter.unfollow(1, 2);  // User 1 unfollows user 2.
twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5], since user 1 is no longer following user 2.

let twitter1 = Twitter();
twitter1.postTweet(1, 5); // User 1 posts a new tweet (id = 5).
twitter1.postTweet(1, 3); // User 1 posts a new tweet (id = 3).
twitter1.getNewsFeed(1);  // User 1's news feed should return a list with 2 tweet ids -> [3,5]. return [3,5]
