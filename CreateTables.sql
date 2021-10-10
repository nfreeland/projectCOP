-- Create all necessary tables
--
--

-- Create all the tables which will be
--  referenced by other tables first

-- Project()
CREATE TABLE Project(
project_name VARCHAR2(64) NOT NULL PRIMARY KEY,
principle_investigator VARCHAR2(64),
date_began DATE
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

-- Station(Location_ID pk, Gps_coords, project_name fk)
CREATE TABLE Station(
location_id NUMBER(3) NOT NULL PRIMARY KEY,
gps_coords VARCHAR2(64),
project_name VARCHAR2(64),
FOREIGN KEY (project_name) REFERENCES Project(project_name)
);

-- Create all other tables

-- Sample(Sample_ID pk, Sample_code, Sample_Type, Sample_date, Firm_name fk, proje$
CREATE TABLE Sample(
sample_id NUMBER(3) NOT NULLL PRIMARY KEY,
sample_code NUMBER(3),
sample_type NUMBER(3), -- or VARCHAR2(8) ?
sample_date DATE,
firm_name VARCHAR2(64),
project_name VARCHAR2(64),
FOREIGN KEY (project_name) REFERENCES Project(project_name),
FOREIGN KEY (firm_name) REFERENCES Firm(firm_name)
);

-- Equipment(Equipment_Name, Equipment_designation, Firm_Name)
CREATE TABLE Equipment(
equipment_name VARCHAR2(16) NOT NULL PRIMARY KEY,
equipment_designation VARCHAR2(16) -- or NUMBER(8) ?
firm_name VARCHAR2(64),
FOREIGN KEY (firm_name) REFERENCES Firm(firm_name)
);

-- Holds()
CREATE TABLE Holds(
location_id NUMBER(3) NOT NULL PRIMARY KEY,
equipment_name VARCHAR2(16),
FOREIGN KEY (equipment_name) REFERENCES Equipment(equipment_name)
);

-- Test()
CREATE TABLE Test(
lab_number NUMBER(3) NOT NULL PRIMARY KEY,
sample_id NUMBER(3)
FOREIGN KEY (lab_number) REFERENCES Lab(lab_number),
FOREIGN KEY (sample_id) REFERENCES Sample(sample_id)
);

-- Design()
CREATE TABLE Design(
firm_name VARCHAR2(16) NOT NULL PRIMARY KEY,
address VARCHAR2(64),
methods VARCHAR2(64),
materials VARCHAR2(64),
FOREIGN KEY (firm_name) REFERENCES Firm(firm_name)
);

-- Research()
CREATE TABLE Research(
firm_name VARCHAR2(16),
research_title VARCHAR2(64),
results VARCHAR2(64),
FOREIGN KEY (firm_name) REFERENCES Firm(firm_name)
);


