-- P181_Employees_Earning_More_Than_Their_Managers
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- +----+-------+--------+-----------+
-- | Id | Name  | Salary | ManagerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | NULL      |
-- | 4  | Max   | 90000  | NULL      |
-- +----+-------+--------+-----------+

-- Given the Employee table, write a SQL query that finds out employees who earn more than their managers. 
-- For the above table, Joe is the only employee who earns more than his manager.

SELECT
    a.Name
FROM
    Employee a 
    INNER JOIN 
    Employee b
ON  a.ManagerId=b.Id
    AND a.Salary>b.Salary
; 