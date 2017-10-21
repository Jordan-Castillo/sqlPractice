/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-KATZENJAMMER-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source KATZENJAMMER-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source KATZENJAMMER-build-Songs.sql;
source KATZENJAMMER-build-Band.sql;
source KATZENJAMMER-build-Albums.sql;
source KATZENJAMMER-build-Instruments.sql;
source KATZENJAMMER-build-Performance.sql;
source KATZENJAMMER-build-Tracklists.sql;
source KATZENJAMMER-build-Vocals.sql

\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM songsList; 
SELECT * FROM songsList;
SELECT COUNT(*) FROM bandList;
SELECT * FROM bandList;
SELECT COUNT(*) FROM albumsList;
SELECT * FROM albumsList;
SELECT COUNT(*) FROM instrumentsList;
SELECT * FROM instrumentsList;
SELECT COUNT(*) FROM performanceList;
SELECT * FROM performanceList;
SELECT COUNT(*) FROM tracklistsList;
SELECT * FROM tracklistsList;
SELECT COUNT(*) FROM vocalsList;
SELECT * FROM vocalsList;

\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source KATZENJAMMER-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


