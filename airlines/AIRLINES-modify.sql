/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : AIRLINES-modify.sql

* Purpose :

* Creation Date : 22-10-2017

* Last Modified : Mon 23 Oct 2017 12:43:16 PM DST

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
UPDATE flightsList flight1
JOIN flightsList flight2 
ON flight1.sourceAirport = flight2.destAirport
AND flight1.destAirport = flight2.sourceAirport
AND flight1.airlineID = flight2.airlineID
SET flight1.flightNum = flight1.flightNum + 1,
	flight2.flightNum = flight2.flightNum - 1,
WHERE (MOD(flight1.flightNum,2) == 0);


