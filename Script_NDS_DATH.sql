CREATE DATABASE NDS_DATH
GO
USE NDS_DATH
GO

CREATE TABLE Vehicles_NDS(
	Accident_Index varchar(20),
	Vehicle_Reference varchar(50),
	Vehicle_Type varchar(50),
	Journey_Purpose varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Accident_Index, Vehicle_Reference)
)
GO

CREATE TABLE VehicleType_NDS(
	Vehicle_Type_ID varchar(50),
	Vehicle_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Vehicle_Type_ID)
)
GO

CREATE TABLE JourneyPurpose_NDS(
	Journey_Purpose_ID varchar(50),
	Journey_Purpose_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Journey_Purpose_ID)
)
GO

ALTER TABLE Vehicles_NDS
ADD CONSTRAINT FK_Vehicles_NDS_VehicleType_NDS
FOREIGN KEY (Vehicle_Type)
REFERENCES VehicleType_NDS(Vehicle_Type_ID)
GO

ALTER TABLE Vehicles_NDS
ADD CONSTRAINT FK_Vehicles_NDS_JourneyPurpose_NDS
FOREIGN KEY (Journey_Purpose)
REFERENCES JourneyPurpose_NDS(Journey_Purpose_ID)
GO

CREATE TABLE Casualities_NDS(
	Accident_Index varchar(20),
	Vehicle_Reference varchar(50),
	Casualty_Reference varchar(50),
	Casualty_Severity varchar(50),
	Age_of_Casualty varchar(50),
	Age_Band_of_Casualty varchar(50),
	Casualty_Type varchar(50),
	Sex_of_Casualty varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Accident_Index, Vehicle_Reference, Casualty_Reference)
)
GO

CREATE TABLE Casualty_Type_NDS(
	Casualty_Type_ID varchar(50),
	Casualty_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Casualty_Type_ID )
)
GO

CREATE TABLE Sex_of_Casualty_NDS(
	Sex_of_CasualtyID varchar(50),
	Sex_of_CasualtyName varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Sex_of_CasualtyID)
)
GO

CREATE TABLE Age_Band_of_Casualty_NDS(
	Age_Band_of_CasualtyID varchar(50),
	Age_Band_of_CasualtyName varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Age_Band_of_CasualtyID)
)
GO

CREATE TABLE Casualty_Severity_NDS(
	Casualty_SeverityID varchar(50),
	Casualty_SeverityName varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Casualty_SeverityID)
)
GO

ALTER TABLE Casualities_NDS
ADD CONSTRAINT FK_Casualities_NDS_Casualty_Type_NDS
FOREIGN KEY (Casualty_Type)
REFERENCES Casualty_Type_NDS(Casualty_Type_ID)
GO

ALTER TABLE Casualities_NDS
ADD CONSTRAINT FK_Casualities_NDS_Casualty_Sex_of_Casuality_NDS
FOREIGN KEY (Sex_of_Casualty)
REFERENCES Sex_of_Casualty_NDS(Sex_of_CasualtyID)
GO

ALTER TABLE Casualities_NDS
ADD CONSTRAINT FK_Casualities_NDS_Age_Band_of_Casualty_NDS
FOREIGN KEY (Age_Band_of_Casualty)
REFERENCES Age_Band_of_Casualty_NDS(Age_Band_of_CasualtyID)
GO

ALTER TABLE Casualities_NDS
ADD CONSTRAINT FK_Casualities_NDS_Casualty_Severity_NDS
FOREIGN KEY (Casualty_Severity)
REFERENCES Casualty_Severity_NDS(Casualty_SeverityID)
GO

ALTER TABLE Casualities_NDS
ADD CONSTRAINT FK_Casualities_NDS_Vehicle_Reference_NDS
FOREIGN KEY (Accident_Index,Vehicle_Reference)
REFERENCES Vehicles_NDS(Accident_Index,Vehicle_Reference)
GO

CREATE TABLE PCD_LSOA_NDS(
	Pcd8 varchar(50),
	Lsoa11cd nvarchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Lsoa11cd)
)
GO
CREATE TABLE Postcode_NDS(
	Postcode varchar(50),
	City char(50),
	Country_name char(50),
	Regione_name char(50),
	County char(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Postcode)
)
GO

ALTER TABLE PCD_LSOA_NDS
ADD CONSTRAINT FK__PCD_LSOA_NDS_Postcode_NDS
FOREIGN KEY (Pcd8)
REFERENCES Postcode_NDS(Postcode)
GO
CREATE TABLE Accidents_NDS(
	Accident_Index varchar(20),
	LSOA_of_Accident_Location nvarchar(50),
	Local_Authority_District varchar(50),
	Accident_Severity varchar(50),
	Speed_limit int,
	Road_Type varchar(50),
	Urban_or_Rural_Area varchar(50),
	Time_Acc time,
	Date_Acc date,
	Number_of_Vehicles int,
	Number_of_Casualities int,
	Light_Conditions varchar(50),
	Build_Up_Road varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Accident_Index)
)

GO
CREATE TABLE Local_Authority_District_NDS(
	LAD_ID varchar(50),
	LAD_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (LAD_ID)
)
GO
CREATE TABLE Accident_Severity_NDS(
	Accident_Severity_ID varchar(50),
	Accident_Severity_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Accident_Severity_ID)
)
--drop database NDS_DATH
GO
CREATE TABLE Road_Type_NDS(
	Road_Type_ID varchar(50),
	Road_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Road_Type_ID)
)
GO
CREATE TABLE Urban_Rural_NDS(
	Urban_Rural_ID varchar(50),
	Urban_Rural_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Urban_Rural_ID)
)
GO
CREATE TABLE Light_Conditions_NDS(
	Light_Conditions_ID varchar(50),
	Light_Conditions_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
	PRIMARY KEY (Light_Conditions_ID)
)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_Local_Authority_District_NDS
FOREIGN KEY (Local_Authority_District)
REFERENCES Local_Authority_District_NDS(LAD_ID)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_Accident_Severity_NDS
FOREIGN KEY (Accident_Severity)
REFERENCES Accident_Severity_NDS(Accident_Severity_ID)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_Road_Type_NDS
FOREIGN KEY (Road_Type)
REFERENCES Road_Type_NDS(Road_Type_ID)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_Urban_Rural_NDS
FOREIGN KEY (Urban_or_Rural_Area)
REFERENCES Urban_Rural_NDS(Urban_Rural_ID)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_Light_Conditions_NDS
FOREIGN KEY (Light_Conditions)
REFERENCES Light_Conditions_NDS(Light_Conditions_ID)
GO
ALTER TABLE Accidents_NDS
ADD CONSTRAINT FK_Accidents_PCD_LSOA_NDS
FOREIGN KEY (LSOA_of_Accident_Location)
REFERENCES PCD_LSOA_NDS(Lsoa11cd)
GO
ALTER TABLE Vehicles_NDS
ADD CONSTRAINT FK_Vehicles_NDS_Accidents_NDS
FOREIGN KEY (Accident_Index)
REFERENCES Accidents_NDS(Accident_Index)

--drop database NDS_DATH