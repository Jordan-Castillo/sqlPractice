/*
	By: Jordan Castillo
	Date: 10 / 15 / 17
	Email: jtcastil@calpoly.edu
	
	CARS database Modify script!	
*/

-- 1)
DELETE FROM carsDataList
WHERE !((carYear = 1979 OR carYear = 1980) AND (mpg >= 20))
AND !((mpg >= 26) AND (horsePower > 110))
AND !((cylinders = 8) AND (accelerate < 10));

-- 2)
SELECT *
FROM carsDataList
ORDER BY carYear, carNameID;

-- 3) Remove from carsDataTable all attr except carNameID, carYear, accelation, mpg, cylinders
ALTER TABLE carsDataList
DROP COLUMN engDisplaceVol,
DROP COLUMN horsePower,
DROP COLUMN weight;

-- 4) Remove tuples with 5 cylinders or fewer
DELETE FROM carsDataList 
WHERE cylinders <= 5;

-- 5) repeating query
SELECT *
FROM carsDataList
ORDER BY carYear, carNameID;

