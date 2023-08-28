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

# ques 17
WITH RankedSalaries AS (
  SELECT
    ID,
    Salary,
    Month,
    ROW_NUMBER() OVER (PARTITION BY ID ORDER BY Month DESC) AS MonthRank
  FROM EmployeeSalary
)
SELECT
  rs1.ID,
  rs1.Month,
  SUM(rs2.Salary) AS CumulativeSalary
FROM RankedSalaries rs1
JOIN RankedSalaries rs2
ON rs1.ID = rs2.ID
AND rs2.Month >= DATEADD(MONTH, -3, rs1.Month) -- Adjust this part to the specific SQL dialect you're using
AND rs2.Month < rs1.Month
WHERE rs1.MonthRank = 1
GROUP BY rs1.ID, rs1.Month
ORDER BY rs1.ID ASC, rs1.Month DESC;