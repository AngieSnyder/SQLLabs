USE HealthCareSample

SELECT OV.PatientID, OV.VisitID, OV.VisitDate, OV.StaffID1,
	YEAR(OV.VisitDate) AS VisitYear
FROM OutpatientVisit AS OV
WHERE VisitDate IS NOT NULL;

SELECT Yearly.PatientID, VisitYear, COUNT(*) AS AnnualVisits
FROM (SELECT OV.PatientID, OV.VisitID, OV.VisitDate, OV.StaffID1,
	YEAR(OV.VisitDate) AS VisitYear
FROM OutpatientVisit AS OV
WHERE VisitDate IS NOT NULL)
	AS Yearly
GROUP BY Yearly.PatientID, Yearly.VisitYear;