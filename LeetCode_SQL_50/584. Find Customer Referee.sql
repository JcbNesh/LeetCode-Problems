-- Problem: 584. Find Customer Referee
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

select name
  from customer
 where referee_id != 2
    or referee_id is null;

/* Explanation: This query selects the names of customers from the customer table where the referee_id is not equal to 2 or is null, meaning they were not referred by customer with id 2.
 */