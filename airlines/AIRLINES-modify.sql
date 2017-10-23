/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : AIRLINES-modify.sql

* Purpose :

* Creation Date : 22-10-2017

* Last Modified : Mon 23 Oct 2017 11:40:42 AM DST

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
WHERE (airlinesList.airlineName != Continental Airlines) 
AND (airlinesList.airlineName != AirTran Airways) 
AND (airlinesList.airlineName != Virgin America);


