-- Problem: 1148. Article Views I
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

select distinct author_id as id
  from views
 where author_id = viewer_id
 order by id asc;

/* Explanation: This query selects distinct author IDs from the views table where the author is also the viewer, and orders the results in ascending order.
 */