/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-AIRLINES-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source AIRLINES-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source AIRLINES-build-airlines.sql;
source AIRLINES-build-airports100.sql;
source AIRLINES-build-flights.sql;


\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM airlinesList;
SELECT * FROM airlinesList;
SELECT COUNT(*) FROM airportsList;
SELECT * FROM airportsList;
SELECT COUNT(*) FROM flightsList;
SELECT * FROM flightsList;


\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source AIRLINES-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


