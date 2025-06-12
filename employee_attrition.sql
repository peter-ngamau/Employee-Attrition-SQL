-- Count of employees by department
SELECT Department, COUNT(*) AS TotalEmployees
FROM employee_attrition
GROUP BY Department;

-- Attrition rate by department
SELECT Department,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM employee_attrition
GROUP BY Department;

-- Average income of employees who left
SELECT AVG(MonthlyIncome) AS AvgIncome_Churned
FROM employee_attrition
WHERE Attrition = 'Yes';

-- Attrition by education level
SELECT Education, COUNT(*) AS Total, 
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left
FROM employee_attrition
GROUP BY Education;

-- Average age by attrition status
SELECT Attrition, AVG(Age) AS AvgAge
FROM employee_attrition
GROUP BY Attrition;
