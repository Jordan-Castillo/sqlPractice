/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-BAKERY-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source BAKERY-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source BAKERY-build-customers.sql;
source BAKERY-build-goods.sql;
source BAKERY-build-receipts.sql;
source BAKERY-build-items.sql;



\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM customersList; 
SELECT * FROM customersList;
SELECT COUNT(*) FROM goodsList;
SELECT * FROM goodsList;
SELECT COUNT(*) FROM receiptsList;
SELECT * FROM receiptsList;
SELECT COUNT(*) FROM itemsList;
SELECT * FROM itemsList;

\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source BAKERY-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


