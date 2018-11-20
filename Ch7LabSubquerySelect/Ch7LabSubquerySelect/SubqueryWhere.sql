USE HealthCareSample

Select P.PatientID, P.FirstName, P.LastName
FROM Patient AS P
WHERE EXISTS(SELECT InnerOV.PatientID, COUNT(*) AS VisitCount
FROM OutpatientVisit AS InnerOV
	WHERE InnerOV.PatientID = P.PatientID
	GROUP BY PatientID
	HAVING COUNT(*)>=15);
