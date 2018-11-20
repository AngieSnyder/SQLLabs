USE HealthCareSample

CREATE TABLE PatientDiseaseMap
	(PDM_Key int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	PatientID int NOT NULL,
	FullName varchar (20) NOT NULL,
	Condition varchar (250) NOT NULL);