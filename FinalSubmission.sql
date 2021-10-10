-- Create all tables and run a test
@CreateTables;

-- Grab table Descriptions
DESC Project;
DESC Lab;
DESC Firm;
DESC Equipment;
DESC Station;
DESC Sample;
DESC Holds;
DESC Test;
DESC Design;
DESC Research;

@Queries;

@PopulateTables;
@TestTables;