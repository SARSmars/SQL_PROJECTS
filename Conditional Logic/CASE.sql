DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
	EmpID INT PRIMARY KEY,
	Name VARCHAR(15),
	Department VARCHAR(15),
	Salary FLOAT
);


INSERT INTO employee (EmpID, Name, Department, Salary)
VALUES
(1, 'Rahul', 'IT', 50000),
(2, 'Priya', 'IT', 70000),
(3, 'Amit', 'HR', 60000),
(4, 'Amrit', 'HR', 40000),
(5, 'Bina', 'IT', 55000),
(6, 'Nirmit', 'HR', 65000),
(7, 'Nakul', 'HR', 55000),
(8, 'Naveen', 'HR', 35000);

SELECT * FROM employee;


-- 2. Basic CASE Example
SELECT 
	Name,
	Salary,
	CASE
		WHEN Salary >= 50000 THEN 'High Salary'
		ELSE 'Regular Salary'
	END AS Salary_Category
FROM employee;

-- 3. Multiple Conditions

SELECT
	Name,
	Salary,
	CASE
		WHEN Salary >= 50000 THEN 'Grade A'
		WHEN Salary >= 30000 THEN 'Grade B'
		ELSE 'Grade C'
	END AS Grade
FROM employee;

