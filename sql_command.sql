CREATE DATABASE Global_Air_Quality;
USE Global_Air_Quality;

drop database Global_Air_Quality;

CREATE TABLE Cleaned_Location (
    LocationKey INT PRIMARY KEY,
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Cleaned_Date (
    DateKey INT PRIMARY KEY,
    Dates DATE,
    Years INT,
    MonthNumber INT,
    MonthName VARCHAR(20),
    Days INT,
    Season VARCHAR(30)
);

CREATE TABLE Cleaned_Air_Quality (
    AirQualityRecordKey INT PRIMARY KEY,
    LocationKey INT,
    DateKey INT,
    `PM2.5` DECIMAL(10,2),
    PM10 DECIMAL(10,2),
    NO2 DECIMAL(10,2),
    SO2 DECIMAL(10,2),
    CO DECIMAL(10,2),
    O3 DECIMAL(10,2),
    Temperature DECIMAL(10,2),
    Humidity DECIMAL(10,2),
    `Wind Speed` DECIMAL(10,2),
    `PM 2.5 Category` VARCHAR(30),
    `PM10 Category` VARCHAR(30),
    `Wind Category` VARCHAR(30),

    FOREIGN KEY (LocationKey)
        REFERENCES Cleaned_Location(LocationKey),

    FOREIGN KEY (DateKey)
        REFERENCES Cleaned_Date(DateKey)
);

select*from Cleaned_Location;
select*from Cleaned_Date;
select*from Cleaned_Air_Quality;
