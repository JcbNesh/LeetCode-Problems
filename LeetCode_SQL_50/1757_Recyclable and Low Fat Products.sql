-- Problem: 1757. Recyclable and Low Fat Products
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

select product_id
  from products
 where low_fats = 'Y'
   and recyclable = 'Y';

/* Explanation: This query selects the product_id of products from the products table where both low_fats and recyclable columns have the value 'Y', indicating that the product is both low in fats and recyclable.
 */