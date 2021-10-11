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
-- From this query we expect to get an ordered
--  list of location ids which use some type of
--  OMatic equipment
; 
