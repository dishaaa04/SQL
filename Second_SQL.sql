DROP TABLE IF EXISTS airlines_information;
DROP TABLE IF EXISTS country_information;
DROP TABLE IF EXISTS state_information;

CREATE TABLE airlines_information (
   airline_id INT,
   airline_name VARCHAR(100),
   country VARCHAR(50),
   founded_year INT,
   fleet_size INT
);

CREATE TABLE country_information (
   country_id INT,
   country_name VARCHAR(100),
   capital VARCHAR(100),
   population BIGINT,
   area_km2 FLOAT
);

CREATE TABLE state_information (
   state_id INT,
   state_name VARCHAR(100),
   country VARCHAR(50),
   population BIGINT,
   area_km2 FLOAT
);

ALTER TABLE airlines_information
ADD headquarters VARCHAR(100),
ADD ceo_name VARCHAR(100),
ADD is_international BOOLEAN;

ALTER TABLE country_information
ADD continent VARCHAR(50),
ADD currency VARCHAR(50),
ADD official_language VARCHAR(50);

ALTER TABLE state_information
ADD governor_name VARCHAR(100),
ADD established_year INT,
ADD timezone VARCHAR(50);

ALTER TABLE airlines_information
RENAME COLUMN airline_name TO name,
RENAME COLUMN country TO origin_country,
RENAME COLUMN fleet_size TO number_of_aircraft;

ALTER TABLE country_information
RENAME COLUMN country_name TO name,
RENAME COLUMN capital TO capital_city,
RENAME COLUMN area_km2 TO area;

ALTER TABLE state_information
RENAME COLUMN state_name TO name,
RENAME COLUMN country TO country_name,
RENAME COLUMN area_km2 TO area;

ALTER TABLE airlines_information
MODIFY name VARCHAR(150),
MODIFY founded_year VARCHAR(10),
MODIFY is_international TINYINT;

ALTER TABLE country_information
MODIFY name VARCHAR(150),
MODIFY population INT,
MODIFY currency VARCHAR(30);

ALTER TABLE state_information
MODIFY name VARCHAR(150),
MODIFY population INT,
MODIFY timezone VARCHAR(30);

INSERT INTO airlines_information VALUES
(1, 'IndiGo', 'India', '2006', 310, 'Gurgaon', 'Pieter Elbers', 1),
(2, 'Air India', 'India', '1932', 120, 'New Delhi', 'Campbell Wilson', 1),
(3, 'SpiceJet', 'India', '2005', 90, 'Gurgaon', 'Ajay Singh', 1),
(4, 'Go First', 'India', '2005', 56, 'Mumbai', 'Kaushik Khona', 1),
(5, 'Vistara', 'India', '2013', 54, 'Gurgaon', 'Vinod Kannan', 1),
(6, 'AirAsia India', 'India', '2013', 30, 'Bengaluru', 'Sunil Bhaskaran', 1),
(7, 'Akasa Air', 'India', '2021', 20, 'Mumbai', 'Vinay Dube', 1),
(8, 'Alliance Air', 'India', '1996', 25, 'New Delhi', 'Harpreet A De Singh', 0),
(9, 'TruJet', 'India', '2013', 7, 'Hyderabad', 'V Umesh', 0),
(10, 'Air Deccan', 'India', '2003', 12, 'Mumbai', 'Capt G R Gopinath', 0),
(11, 'Lufthansa', 'Germany', '1953', 280, 'Cologne', 'Carsten Spohr', 1),
(12, 'Emirates', 'UAE', '1985', 270, 'Dubai', 'Ahmed bin Saeed', 1),
(13, 'Qatar Airways', 'Qatar', '1993', 235, 'Doha', 'Akbar Al Baker', 1),
(14, 'Singapore Airlines', 'Singapore', '1947', 150, 'Singapore', 'Goh Choon Phong', 1),
(15, 'Delta Air Lines', 'USA', '1924', 900, 'Atlanta', 'Ed Bastian', 1),
(16, 'United Airlines', 'USA', '1926', 850, 'Chicago', 'Scott Kirby', 1),
(17, 'British Airways', 'UK', '1974', 300, 'London', 'Sean Doyle', 1),
(18, 'Turkish Airlines', 'Turkey', '1933', 350, 'Istanbul', 'Bilal Ekşi', 1),
(19, 'Etihad Airways', 'UAE', '2003', 110, 'Abu Dhabi', 'Antonoaldo Neves', 1),
(20, 'Japan Airlines', 'Japan', '1951', 200, 'Tokyo', 'Yuji Akasaka', 1);

INSERT INTO country_information VALUES
(1, 'India', 'New Delhi', 1400000000, 3287263, 'Asia', 'INR', 'Hindi'),
(2, 'USA', 'Washington D.C.', 331000000, 9833520, 'North America', 'USD', 'English'),
(3, 'UK', 'London', 67000000, 243610, 'Europe', 'GBP', 'English'),
(4, 'Germany', 'Berlin', 83000000, 357022, 'Europe', 'EUR', 'German'),
(5, 'France', 'Paris', 67000000, 643801, 'Europe', 'EUR', 'French'),
(6, 'Japan', 'Tokyo', 126000000, 377975, 'Asia', 'JPY', 'Japanese'),
(7, 'Australia', 'Canberra', 26000000, 7692024, 'Oceania', 'AUD', 'English'),
(8, 'Canada', 'Ottawa', 38000000, 9984670, 'North America', 'CAD', 'English'),
(9, 'Russia', 'Moscow', 146000000, 17098242, 'Europe/Asia', 'RUB', 'Russian'),
(10, 'China', 'Beijing', 1440000000, 9596961, 'Asia', 'CNY', 'Mandarin'),
(11, 'Brazil', 'Brasília', 213000000, 8515767, 'South America', 'BRL', 'Portuguese'),
(12, 'South Africa', 'Pretoria', 60000000, 1221037, 'Africa', 'ZAR', 'Zulu'),
(13, 'Mexico', 'Mexico City', 128000000, 1964375, 'North America', 'MXN', 'Spanish'),
(14, 'Italy', 'Rome', 60000000, 301340, 'Europe', 'EUR', 'Italian'),
(15, 'Spain', 'Madrid', 47000000, 505990, 'Europe', 'EUR', 'Spanish'),
(16, 'UAE', 'Abu Dhabi', 10000000, 83600, 'Asia', 'AED', 'Arabic'),
(17, 'Saudi Arabia', 'Riyadh', 35000000, 2149690, 'Asia', 'SAR', 'Arabic'),
(18, 'Indonesia', 'Jakarta', 273000000, 1904569, 'Asia', 'IDR', 'Indonesian'),
(19, 'Argentina', 'Buenos Aires', 45000000, 2780400, 'South America', 'ARS', 'Spanish'),
(20, 'New Zealand', 'Wellington', 5000000, 268838, 'Oceania', 'NZD', 'English');

INSERT INTO state_information VALUES
(1, 'Maharashtra', 'India', 124000000, 307713, 'Eknath Shinde', 1960, 'IST'),
(2, 'Karnataka', 'India', 68000000, 191791, 'Siddaramaiah', 1956, 'IST'),
(3, 'Tamil Nadu', 'India', 78000000, 130058, 'M. K. Stalin', 1956, 'IST'),
(4, 'Gujarat', 'India', 70000000, 196024, 'Bhupendra Patel', 1960, 'IST'),
(5, 'California', 'USA', 39500000, 423967, 'Gavin Newsom', 1850, 'PST'),
(6, 'Texas', 'USA', 29000000, 695662, 'Greg Abbott', 1845, 'CST'),
(7, 'Bavaria', 'Germany', 13000000, 70550, 'Markus Söder', 1949, 'CET'),
(8, 'Queensland', 'Australia', 5100000, 1852642, 'Steven Miles', 1859, 'AEST'),
(9, 'Ontario', 'Canada', 14700000, 1076395, 'Doug Ford', 1867, 'EST'),
(10, 'British Columbia', 'Canada', 5000000, 944735, 'David Eby', 1871, 'PST'),
(11, 'New South Wales', 'Australia', 8200000, 800642, 'Chris Minns', 1901, 'AEST'),
(12, 'Bihar', 'India', 120000000, 94163, 'Nitish Kumar', 1912, 'IST'),
(13, 'West Bengal', 'India', 97000000, 88752, 'Mamata Banerjee', 1947, 'IST'),
(14, 'Madhya Pradesh', 'India', 85000000, 308252, 'Mohan Yadav', 1956, 'IST'),
(15, 'Florida', 'USA', 22000000, 170312, 'Ron DeSantis', 1845, 'EST'),
(16, 'New York', 'USA', 20000000, 141297, 'Kathy Hochul', 1788, 'EST'),
(17, 'Sao Paulo', 'Brazil', 46000000, 248222, 'Tarcísio de Freitas', 1989, 'BRT'),
(18, 'Buenos Aires', 'Argentina', 17000000, 307571, 'Axel Kicillof', 1880, 'ART'),
(19, 'Jakarta', 'Indonesia', 10500000, 661, 'Heru Budi Hartono', 1966, 'WIB'),
(20, 'Dubai', 'UAE', 3300000, 4114, 'Sheikh Hamdan', 1833, 'GST');
