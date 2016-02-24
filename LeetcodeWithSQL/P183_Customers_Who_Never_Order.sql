-- 183 Customers Who Never Order
-- https://leetcode.com/problems/customers-who-never-order/

SELECT
    a.Name
FROM
    Customers a
    LEFT JOIN
    Orders b
ON a.Id=b.CustomerId
WHERE b.Id IS NULL
;