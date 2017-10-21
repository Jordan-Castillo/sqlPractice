/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-CARS-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source CARS-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source CARS-build-continents.sql;
source CARS-build-countries.sql;
source CARS-build-car-makers.sql;
source CARS-build-model-list.sql;
source CARS-build-car-names.sql;
source CARS-build-cars-data.sql;


\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM continentsList;
SELECT * FROM continentsList;
SELECT COUNT(*) FROM countriesList;
SELECT * FROM countriesList;
SELECT COUNT(*) FROM carMakersList;
SELECT * FROM carMakersList;
SELECT COUNT(*) FROM modelListList;
SELECT * FROM modelListList;
SELECT COUNT(*) FROM carNamesList;
SELECT * FROM carNamesList;
SELECT COUNT(*) FROM carsDataList;
SELECT * FROM carsDataList;

\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source CARS-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


