-- Create all necessary tables
--
--
-- Station(Location_ID pk, Gps_coords, project_name fk)
CREATE TABLE Station(
location_id NUMBER(3) NOT NULL PRIMARY KEY,
gps_coords VARCHAR2(64),
project_name VARCHAR2(64)
);

-- Sample(Sample_ID pk, Sample_code, Sample_Type, Sample_date, Firm_name fk, proje$
CREATE TABLE Sample(
sample_id NUMBER(3) NOT NULLL PRIMARY KEY,
sample_code NUMBER(3),
sample_type NUMBER(3), -- or VARCHAR2(8) ?
sample_date DATE,
firm_name VARCHAR2(64),
project_name VARCHAR2(64)
);

-- Lab(Lab_Number pk, Lab_Manager)
CREATE TABLE Lab(
lab_number NUMBER(3) NOT NULL PRIMARY KEY,
lab_manager VARCHAR2(64),
lab_phone VARCHAR2(16) -- or NUMBER(9) ?
);

-- Firm(Firm_Name pk, Address, Firm_Phone)
CREATE TABLE Firm(
firm_name VARCHAR2(64) NOT NULL PRIMARY KEY,
address VARCHAR2(64),
firm_phone VARCHAR2(16) -- or NUMBER(9) ?
);

-- Equipment()
CREATE TABLE Equipment(
);

-- Holds()
CREATE TABLE Holds(
);

-- Test()
CREATE TABLE Test(
);

-- Design()
CREATE TABLE Design(
);

Research(
);

-- Project()
CREATE TABLE Project(
);
