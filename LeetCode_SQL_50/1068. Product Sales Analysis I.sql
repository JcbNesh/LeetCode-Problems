-- Problem: 1068. Product Sales Analysis I
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

select p.product_name,
       s.year,
       s.price
  from sales s
  left outer join product p
on s.product_id = p.product_id;

/* Explanation: This query selects the product name, year, and price of sales from the product and sales tables, joining them on the product ID, to display the sales analysis for each product.
 */