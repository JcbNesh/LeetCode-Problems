-- Problem: 1378. Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

select eu.unique_id,
       e.name
  from employees e
  left join employeeuni eu
on e.id = eu.id;

/* Explanation: This query selects the unique_id and name of employees from the employees table, joining it with the employee_uniques table on the employee ID, to display the unique identifier for each employee.
 */