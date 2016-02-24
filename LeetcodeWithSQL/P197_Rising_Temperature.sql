-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/


-- see: https://leetcode.com/discuss/29993
SELECT
    a.Id
FROM
    Weather a,Weather b
WHERE
    a.Temperature > wt2.Temperature 
    AND TO_DAYS(a.Date)-TO_DAYS(b.Date)=1
;