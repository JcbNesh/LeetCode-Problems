-- Problem: 1683. Invalid Tweets
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

select tweet_id
  from tweets
 where length(content) > 15;

/* Explanation: This query selects the tweet_id of tweets from the tweets table where the length of the content is greater than 15 characters, indicating that the tweet is invalid.
 */