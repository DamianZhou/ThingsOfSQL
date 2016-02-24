-- 176. Second Highest Salary
-- https://leetcode.com/problems/second-highest-salary/

SELECT
    a.Salary
FROM
    Employee a,Employee b
WHERE
    a.Salary<b.Salary
GROUP BY a.Salary
HAVING COUNT(1)=1
;

--
SELECT 
    max(Salary) 
FROM 
    Employee 
WHERE 
    Salary < (SELECT max(Salary) FROM Employee)