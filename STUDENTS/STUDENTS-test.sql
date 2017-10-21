/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-STUDENTS-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source STUDENTS-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source STUDENTS-build-list.sql;
source STUDENTS-build-teachers.sql;

\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM studentList;
SELECT * FROM studentList;
SELECT COUNT(*) FROM teacherList;
SELECT * FROM teacherList;

\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source STUDENTS-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


