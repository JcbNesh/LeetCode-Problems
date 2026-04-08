-- Problem: 197. Rising Temperature
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

select w1.id
  from weather w1,
       weather w2
 where w1.recorddate = w2.recorddate + 1
   and w1.temperature > w2.temperature;

/* Explanation: This query selects the id of records from the weather table where the record date is one day after another record's date and the temperature is higher than that previous day's temperature, indicating a rising temperature.
 */