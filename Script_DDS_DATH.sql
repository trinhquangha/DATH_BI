create database DDS_DATH
go
use DDS_DATH
go
create table Dim_Accident_Severity
(
	Accident_Severity_Key int IDENTITY(1,1) NOT NULL,
	Accident_Severity_ID varchar(50),
	Accident_Severity_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Accident_Severity_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create table Dim_Road_Type
(
	Road_Type_Key int IDENTITY(1,1) NOT NULL,
	Road_Type_ID varchar(50),
	Road_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Road_Type_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create table Dim_Journey_Purpose
(
	Journey_Purpose_Key int IDENTITY(1,1) NOT NULL,
	Journey_Purpose_ID varchar(50),
	Journey_Purpose_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Journey_Purpose_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Sex_of_Casuality
(
	Sex_Casuality_Key int IDENTITY(1,1) NOT NULL,
	Sex_Casuality_ID varchar(50),
	Sex_Casuality_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Sex_Casuality_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Local_Authority_District
(
	LAD_Key int IDENTITY(1,1) NOT NULL,
	LAD_ID varchar(50),
	LAD_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[LAD_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Casuality_Type
(
	Casuality_Type_Key int IDENTITY(1,1) NOT NULL,
	Casuality_Type_ID varchar(50),
	Casuality_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Casuality_Type_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Vehicle_Type
(
	Vehicle_Type_Key int IDENTITY(1,1) NOT NULL,
	Vehicle_Type_ID varchar(50),
	Vehicle_Type_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_Type_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Casuality_Severity
(
	Casuality_Severity_Key int IDENTITY(1,1) NOT NULL,
	Casuality_Severity_ID varchar(50),
	Casuality_Severity_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Casuality_Severity_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Age_Band_of_Casuality
(
	Age_Band_Key int IDENTITY(1,1) NOT NULL,
	Age_Band_ID varchar(50),
	Age_Band_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Age_Band_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create table Dim_Postcode
(
	Postcode_Key int IDENTITY(1,1) NOT NULL,
	Postcode varchar(50),
	Country_name varchar(50),
	Region_name varchar(50),
	County varchar(50),
	City varchar(50),
	Status varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Postcode_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table DimTime
(
	Time_Key int IDENTITY(1,1) NOT NULL,
	Time_ID varchar(50),
	Time_Value time,
	Hour int,
	Minute int,
	Time_Period varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Time_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table DimDate
(
	Date_Key int IDENTITY(1,1) NOT NULL,
	Date_ID varchar(50),
	Date_Value date,
	Day int,
	Month int,
	Month_Name varchar(50),
	Quarter int,
	Year int,
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Date_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Urban_Rural
(
	Urban_Rural_Key int IDENTITY(1,1) NOT NULL,
	Urban_Rural_ID varchar(50),
	Urban_Rural_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[Urban_Rural_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create table Dim_Build_Up_Road
(
	BUR_Key int IDENTITY(1,1) NOT NULL,
	BUR_ID varchar(50),
	BUR_Name varchar(50),
	CreatedDate datetime,
	UpdatedDate datetime,
PRIMARY KEY CLUSTERED 
(
	[BUR_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create table Fact_Accidents
(
	Accident_Severity_Key int,
	Road_Type_Key int,
	Local_Authority_District_Key int,
	Urban_Rural_Key int,
	BUR_Key int,
	Casuality_Type_Key int,
	Casuality_Severity_Key int,
	Age_Band_Key int,
	Sex_Casuality_Key int,
	Vehicle_Type_Key int,
	Journey_Purpose_Key int,
	Postcode_Key int,
	Date_Key int,
	Time_Key int,
	Num_of_Accident int,
	Num_of_Casuality int,
	CreatedDate datetime,
	UpdatedDate datetime,
	Primary Key (Accident_Severity_Key, Road_Type_Key, Local_Authority_District_Key, Urban_Rural_Key, BUR_Key, Casuality_Type_Key, Casuality_Severity_Key, Age_Band_Key, Sex_Casuality_Key,
	Vehicle_Type_Key, Journey_Purpose_Key, Postcode_Key, Date_Key, Time_Key) 
)
CREATE TABLE [dbo].[Metadata_DDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NULL,
	[LSET] [datetime] NULL,
	[CET] [datetime] NULL,
	PRIMARY KEY (ID)
)
go

---Foreign key
alter table Fact_Accidents
add constraint FK_Accident_Severity_Key
Foreign Key (Accident_Severity_Key) references Dim_Accident_Severity(Accident_Severity_Key);

alter table Fact_Accidents
add constraint FK_Road_Type_Key
Foreign Key (Road_Type_Key) references Dim_Road_Type(Road_Type_Key);

alter table Fact_Accidents
add constraint FK_LAD_Key
Foreign Key (Local_Authority_District_Key) references Dim_Local_Authority_District(LAD_Key);

alter table Fact_Accidents
add constraint FK_Urban_Rural_Key
Foreign Key (Urban_Rural_Key) references Dim_Urban_Rural(Urban_Rural_Key);

alter table Fact_Accidents
add constraint FK_BUR_Key
Foreign Key (BUR_Key) references Dim_Build_Up_Road(BUR_Key);

alter table Fact_Accidents
add constraint FK_Casuality_Type_Key
Foreign Key (Casuality_Type_Key) references Dim_Casuality_Type(Casuality_Type_Key);

alter table Fact_Accidents
add constraint FK_Casuality_Severity_Key
Foreign Key (Casuality_Severity_Key) references Dim_Casuality_Severity(Casuality_Severity_Key);

alter table Fact_Accidents
add constraint FK_Age_Band_Key
Foreign Key (Age_Band_Key) references Dim_Age_Band_of_Casuality(Age_Band_Key);


alter table Fact_Accidents
add constraint FK_Sex_Casuality_Key
Foreign Key (Sex_Casuality_Key) references Dim_Sex_of_Casuality(Sex_Casuality_Key);

alter table Fact_Accidents
add constraint FK_Vehicle_Type_Key
Foreign Key (Vehicle_Type_Key) references Dim_Vehicle_Type(Vehicle_Type_Key);

alter table Fact_Accidents
add constraint FK_Journey_Purpose_Key
Foreign Key (Journey_Purpose_Key) references Dim_Journey_Purpose(Journey_Purpose_Key);

alter table Fact_Accidents
add constraint FK_Postcode_Key
Foreign Key (Postcode_Key) references Dim_Postcode(Postcode_Key);

alter table Fact_Accidents
add constraint FK_Date_Key
Foreign Key (Date_Key) references DimDate(Date_Key);

alter table Fact_Accidents
add constraint FK_Time_Key
Foreign Key (Time_Key) references DimTime(Time_Key);
----INSERT DATA IN METADATA
INSERT INTO Metadata_DDS values ('Dim_Accident_Severity','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Road_Type','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Local_Authority_District','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Urban_Rural','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Build_Up_Road','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Casuality_Type','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Casuality_Severity','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Age_Band_of_Casuality','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Sex_of_Casuality','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Vehicle_Type','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Journey_Purpose','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Dim_Postcode','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('DimDate','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('DimTime','1/1/1900',NULL)
INSERT INTO Metadata_DDS values ('Fact_Accidents','1/1/1900',NULL)