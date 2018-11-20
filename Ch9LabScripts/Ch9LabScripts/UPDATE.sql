USE HealthCareSample

SELECT PatientID, VisitCount, 
	CASE
WHEN VisitCount <=10 THEN 'LOW'
WHEN VisitCount <=50 THEN 'MODERATE'
WHEN VisitCount <=100 THEN 'HIGH'
ELSE 'VERY HIGH'
END AS VisitGroup
FROM OutpatientVisitSummary 
ORDER BY VisitGroup;

BEGIN TRANSACTION;

UPDATE OutpatientVisitSummary
SET VisitGrouping = CASE
WHEN VisitCount <= 10 THEN 'LOW'
WHEN VisitCount <= 50 THEN 'MODERATE'
WHEN VisitCount <= 100 THEN 'HIGH'
ELSE 'VERY HIGH'
END;