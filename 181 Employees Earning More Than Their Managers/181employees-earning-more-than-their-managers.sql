# Write your MySQL query statement below
SELECT E.Name AS Employee
FROM Employee M
JOIN Employee E ON E.ManagerId = M.Id
WHERE E.Salary > M.Salary