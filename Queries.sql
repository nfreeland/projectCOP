SELECT Sample_Code
FROM Sample S, Test T
WHERE S.sample_id=T.sample_ID
AND T.Lab_number<10
-- From this querry we expect to get sample_codes for test by lab numbers less than 10
;

SELECT location_id
FROM Holds h, Equipment e
WHERE b.equipment_name = e.equipment_name
AND b.equipment_name LIKE '%OMatic%'
ORDER BY location_id
; 

SELECT L.Lab_Manager, T.Sample_ID
FROM Test T, Lab L
WHERE L.Lab_number=T.Lab_number
AND T.Lab_Number<10
-- From this query we expect to get the Lab Manager and Sample_IDs for test done by labs with lab numbers less than 10
; 

Select E.Eqipment_Designation
FROM Holds H, Equipment E
WHERE E.Equipment_Name=H.Equipment_Name
AND rownum<11
-- From this query we expect to get the Equipment Designation for the first 10 results of equipment that is being Held
;
