# 1. Show departments where average salary greater than 60000
SELECT Department, AVG(Salary) AS Average_salary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;

# 2. Find top 3 products with highest total sales amount
SELECT ProductID, SUM(Amount) AS Total_Sales
FROM Sales
GROUP BY ProductID
OREDR BY STotal_Sales DESC
LIMIT 3;

# 3. Find highest salary, second highest salary without using LIMIT
SELECT E1.Salary
FROM Employees E1
WHERE 2 >= (
    SELECT COUNT(DISTINCT E2.Salary)
    FROM Employees E2
    WHERE E2.Salary >= E1.Salary
)
ORDER BY Salary DESC;