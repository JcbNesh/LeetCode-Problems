-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

select v.customer_id,
       count(*) as count_no_trans
  from visits v
  left join transactions t
on v.visit_id = t.visit_id
 where t.transaction_id is null
 group by v.customer_id;

/* Explanation: This query selects the customer_id and counts the number of visits without transactions for each customer. It performs a left join between the visits and transactions tables on visit_id, filtering for cases where there is no corresponding transaction (t.transaction_id is null). The results are grouped by customer_id to get the count of such visits for each customer.
 */