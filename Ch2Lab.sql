USE HealthCareSample;

SELECT P.PatientID, P.FirstName, P.LastName, P.[State], P.ZipCode, P.Gender
FROM Patient AS P;

SELECT P.PatientID, P.FirstName, P.LastName, P.[State] +' '+ P.ZipCode AS [State and Zipcode], P.Gender
FROM Patient AS P;

SELECT P.PatientID, P.FirstName, P.LastName, P.[State] +' '+ P.ZipCode AS [State and Zipcode], P.Gender
FROM Patient AS P
ORDER BY [State and Zipcode] DESC;

SELECT P.PatientID, P.FirstName, P.LastName, P.[State] +' '+ P.ZipCode AS [State and Zipcode], P.Gender
FROM Patient AS P
WHERE P.Gender = 'male';

SELECT P.PatientID, P.FirstName, P.LastName, P.[State] +' '+ P.ZipCode AS [State and Zipcode], P.Gender
FROM Patient AS P
WHERE P.Gender = 'male'
	AND P.ZipCode LIKE '0%'
ORDER BY [State and Zipcode];

SELECT P.PatientID, P.FirstName, P.LastName, P.[State] +' '+ P.ZipCode AS [State and Zipcode], P.Gender
FROM Patient AS P;



