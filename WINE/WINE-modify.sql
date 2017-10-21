/*
	By: Jordan Castillo
	Date: 10 / 11 / 17
	Email: jtcastil@calpoly.edu
	
	WINE database Modify script!	
*/
-- 1) remove column storing apellation name and name of the wine from wineList relation
ALTER TABLE wineList
DROP COLUMN appelation;

ALTER TABLE wineList
DROP COLUMN wineName;

-- 2) Keep in the wine table only Syrahs with a score of 93 or higher
DELETE FROM wineList
WHERE (grapeName != 'Syrah') OR (wineScore < 93);

-- 3) Modify the length of the attribute storing the winery name to be 15 characters
ALTER TABLE wineList 
MODIFY COLUMN
wineryName VARCHAR(15);

-- 4) Add a new column to the table called Revenue. Same type as the price column.
ALTER TABLE wineList
ADD Revenue INTEGER;

-- 5) Compute potential revenue of wine, given price per bottle, # of cases, and 12 bottles per case
UPDATE wineList
SET Revenue = (winePrice * wineCases * 12);

-- 6) Output the list of wines from the wineList
SELECT * FROM wineList
ORDER BY Revenue;

