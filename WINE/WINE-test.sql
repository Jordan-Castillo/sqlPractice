/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-WINE-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source WINE-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source WINE-build-appellations.sql;
source WINE-build-grapes.sql;
source WINE-build-wine.sql;


\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM appelationsList;
SELECT * FROM appelationsList;
SELECT COUNT(*) FROM grapesList;
SELECT * FROM grapesList;
SELECT COUNT(*) FROM wineList;
SELECT * FROM wineList;


\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source WINE-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


