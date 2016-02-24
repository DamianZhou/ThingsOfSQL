-- 175. Combine Two Tables
-- https://leetcode.com/problems/combine-two-tables/

SELECT
    a.FirstName
    ,a.LastName
    ,b.City
    ,b.State
FROM
    Person a
    LEFT JOIN
    Address b
ON a.PersonId=b.PersonId
;