USE HealthCareSample

Select P.PatientID, P.FirstName, P.LastName, 
	(SELECT COUNT(*) FROM OutpatientVisit AS OVInner
	WHERE OVInner.PatientID = P.PatientID) AS VisitCount
FROM Patient AS P;
	
