SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET n-1;

# ques 16;
SELECT Company, 
       AVG(Salary) AS MedianSalary
FROM (
  SELECT Company, Salary,
         ROW_NUMBER() OVER(PARTITION BY Company ORDER BY Salary) AS RowAsc,
         ROW_NUMBER() OVER(PARTITION BY Company ORDER BY Salary DESC) AS RowDesc
  FROM Employee
) AS RankedSalaries