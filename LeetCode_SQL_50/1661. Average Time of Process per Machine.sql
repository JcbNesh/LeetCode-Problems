-- Problem: 1661. Average Time of Process per Machine
-- Difficulty: Easy
-- LeetCode Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50


select a.machine_id,
       round(
          avg(b.timestamp - a.timestamp),
          3
       ) as processing_time
  from activity a
  join activity b
on a.machine_id = b.machine_id
   and a.process_id = b.process_id
   and a.activity_type = 'start'
   and b.activity_type = 'end'
 group by a.machine_id;
  
/* Explanation: This query calculates the average processing time for each machine by joining the activity table with itself to match start and end activities for the same machine and process. It then groups the results by machine_id and rounds the average processing time to three decimal places.
 */
