/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : AIRLINES-modify.sql

* Purpose :

* Creation Date : 22-10-2017

* Last Modified : Mon 23 Oct 2017 01:18:58 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
--1)

--2) Remove from the flights database all flights except for those to and from 'AKI'
DELETE FROM flightsList
WHERE (sourceAirport != 'AKI') AND (destAirport != 'AKI');
--3) For all flights not operated by Continental, AirTran, or Virgin, increase flightnum by 2000
UPDATE flightsList
JOIN airlinesList ON flightsList.airlineID = airlinesList.airlineID 
SET flightsList.flightNum = flightNum + 2000 
WHERE (airlinesList.airlineName != 'Continental Airlines') 
AND (airlinesList.airlineName != 'AirTran Airways') 
AND (airlinesList.airlineName != 'Virgin America');
--4)
--      this command alters every table, not just the ones i want, need to deselect chosen airlines
UPDATE flightsList f1
JOIN flightsList f2 
ON f1.sourceAirport = f2.destAirport
AND f1.destAirport = f2.sourceAirport
AND f1.airlineID = f2.airlineID
SET f1.flightNum = f1.flightNum + 1,
f2.flightNum = f2.flightNum - 1
WHERE mod(f1.flightNum,2) = 0
AND f1.airlineID != 7
AND f1.airlineID != 10
AND f1.airlineID 1= 12;



