# Write your MySQL query statement below
SELECT *
FROM cinema
WHERE NOT description = 'boring' AND NOT (ID % 2) = 0
GROUP BY rating
ORDER BY rating DESC;