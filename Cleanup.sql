-- Only run this during our personal testing phase
--  I think we leave the tables up for him to work with

 -- Drop tables with foreign key
 --  references first
DROP TABLE Station;
DROP TABLE Equipment;
DROP TABLE Holds;
DROP TABLE Test;
DROP TABLE Research;
DROP TABLE Sample;
DROP Table Design;

-- Drop the parent tables
DROP TABLE Firm;
DROP TABLE Project;
DROP TABLE Lab;