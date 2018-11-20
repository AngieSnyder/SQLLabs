SELECT E.EmployeeID
	, E.FirstName + ' ' + E.LastName AS EmployeeName
	, E.Title, E.ReportsTo
	, M.EmployeeID
	, M.FirstName + ' ' + M.LastName AS ManagerName
	, M.Title
FROM Employee AS E
	LEFT OUTER JOIN Employee AS M
	ON E.ReportsTo = M.EmployeeID;