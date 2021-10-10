SELECT Sample_Code
FROM Sample S, Test T
WHERE S.sample_id=T.sample_ID
AND T.Lab_number<10
-- From this querry we expect to get sample_codes for test by lab numbers less than 10
;
