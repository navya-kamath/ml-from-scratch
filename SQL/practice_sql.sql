# 1. Show departments where average salary greater than 60000
SELECT Department, AVG(Salary) AS Average_salary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;

# 2.