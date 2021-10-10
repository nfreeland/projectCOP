SELECT S.Sample_Code
FROM Sample S, Test T
WHERE S.sample_id=T.sample_ID
AND T.Lab_number<10
-- From this querry we expect to get sample_codes for test by lab numbers less than 10
;


SELECT L.Lab_Manager, T.Sample_ID
FROM Test T, Lab L
WHERE L.Lab_number=T.Lab_number
AND T.Lab_Number<10
-- From this query we expect to get the Lab Manager and Sample_IDs for test done by labs with lab numbers less than 10
; 
