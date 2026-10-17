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

-- Rank
SELECT 
	Name,
	Salary,
	RANK() OVER(ORDER BY Salary DESC) AS Salary_rank
FROM employee;

-- Step 4: Get Top 3 Ranked Employees

SELECT *
FROM
(
	SELECT
		Name, 
		Salary,
		RANK() OVER(ORDER BY Salary DESC) as rnk
	FROM employee	
)
AS t
WHERE rnk <=3;


-- Step 5: Ranking Within Departments

SELECT 
	Name,
	Salary,
	Department,
	RANK() OVER(
		PARTITION BY Department
		ORDER BY Salary DESC
	) AS Department_rnk
FROM employee;

