USE RetailBankingSample

SELECT MIN(LT.Amount) AS MinimumValue
	, MAX(LT.Amount) AS MaximumValue
	, AVG(LT.Amount) AS Average
	, SUM(LT.Amount) AS Total
FROM LoanTransaction AS LT;

SELECT COUNT(*) AS EmployeeCount
	, COUNT(E.Salary) AS SalaryEmployee
	, COUNT(E.HourlyRate) AS HourlyEmployee
	, COUNT(E.FixedRate) AS FixedRateEmployeeCount
FROM Employee AS E;