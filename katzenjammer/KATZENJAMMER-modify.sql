/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : KATZENJAMMER-modify.sql

* Purpose :

* Creation Date : 24-10-2017

* Last Modified : Tue 24 Oct 2017 02:30:49 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
--1) Modify the table schema to hold longer instrument names
ALTER TABLE instrumentsList
MODIFY COLUMN instrumentName VARCHAR(45);

UPDATE instrumentsList
SET instrumentName = 'awesome bass balalaika'
WHERE instrumentName = 'bass balalaika';

UPDATE instrumentsList
SET instrumentName = 'acoustic guitar'
WHERE instrumentNAme = 'guitar';

--2) Delete from instrumentsList all tuples with bandmateID != 4, AND instrumentName != acoustic guitar
DELETE FROM instrumentsList
WHERE (bandmateID != 4) AND (instrumentName != 'acoustic guitar');

--3) show tuples
SELECT *
FROM instrumentsList
ORDER BY songID, bandmateID;

--4) Add new a column to albumsList storing the number of songs on the album
ALTER TABLE albumsList
ADD songNumber INTEGER;

--5) Update songNumber based on tracklistsList
UPDATE albumsList
SET songNumber = 
	(SELECT COUNT(albumID)
	FROM tracklistsList
	WHERE albumsList.albumID = tracklistsList.albumID);
--6) show resulting table
SELECT *
FROM albumsList
ORDER BY albumYear;


