USE RetailBankingSample

SELECT LT.AcctID
	, MIN(LT.Amount) AS MinimumValue
	, MAX(LT.Amount) AS MaximumValue
	, AVG(LT.Amount) AS Average
	, SUM(LT.Amount) AS Total
FROM LoanTransaction AS LT
GROUP BY LT.AcctID;

SELECT Title
	, COUNT(*) AS EmployeeCount
	, COUNT(E.Salary) AS SalaryEmployee
	, COUNT(E.HourlyRate) AS HourlyEmployee
	, COUNT(E.FixedRate) AS FixedRateEmployeeCount
FROM Employee AS E
GROUP BY Title
HAVING COUNT(*) > 10;