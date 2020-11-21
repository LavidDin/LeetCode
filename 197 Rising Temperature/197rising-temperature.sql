# Write your MySQL query statement below
SELECT Id from Weather w1
WHERE w1.Temperature > (
    SELECT w2.Temperature from Weather w2
    WHERE RecordDate = subdate(w1.RecordDate, 1)
);