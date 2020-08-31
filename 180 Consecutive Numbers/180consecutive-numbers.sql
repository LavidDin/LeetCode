# Write your MySQL query statement below
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l2.id = l1.id +1
JOIN Logs l3 ON l3.id = l1.id +2
WHERE l1.Num = l2.num AND l1.Num = l3.num
    