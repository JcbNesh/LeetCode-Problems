-- Problem: 595. Big Countries
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50

select name,
       area,
       population
  from world
 where area >= 3000000
    or population >= 25000000;

/* Explanation: This query selects the name, area, and population of countries from the world table where either the area is greater than or equal to 3 million or the population is greater than or equal to 25 million.
 */