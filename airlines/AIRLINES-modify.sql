/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : AIRLINES-modify.sql

* Purpose :

* Creation Date : 22-10-2017

* Last Modified : Sun 22 Oct 2017 06:41:20 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
--1)

--2) Remove from the flights database all flights except for those to and from 'AKI'
DELETE FROM flightsList
WHERE (sourceAirport != 'AKI') AND (destAirport != 'AKI');

