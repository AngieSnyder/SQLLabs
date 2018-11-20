USE HealthCareSample

SELECT OV.PatientID, 
	COUNT(OV.VisitDate) AS NumberPatientVisits,
	COUNT(OV.ICD10_2) AS NumberofVisitsWithICD10_2Codes
FROM OutpatientVisit AS OV
WHERE OV.VisitDate >= '20160101'
GROUP BY PatientID
HAVING COUNT(OV.ICD10_2) > 0
;
