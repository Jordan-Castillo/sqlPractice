/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	TEST FILE	
*/

tee lab2-CSU-output.txt

use jtcastil;
\! echo '********************************'
\! echo Let us see what tables there are
\! echo '********************************'
show tables;

\! echo '*******************************'
\! echo Creating Tables
\! echo '*******************************'
source CSU-setup.sql

\! echo '******************************'
\! echo Show tables
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo Populate Tables
\! echo '******************************'
source CSU-build-Campuses.sql;
source CSU-build-disciplines.sql;
source CSU-build-degrees.sql;
source CSU-build-csu-fees.sql;
source CSU-build-discipline-enrollments.sql;
source CSU-build-enrollments.sql;
source CSU-build-faculty.sql;


\! echo '*******************************'
\! echo Counting Tuples
\! echo '*******************************'
SELECT COUNT(*) FROM CampusesList;
SELECT * FROM CampusesList;

SELECT COUNT(*) FROM disciplinesList;
SELECT * FROM disciplinesList;

SELECT COUNT(*) FROM degreesList;
SELECT * FROM degreesList;

SELECT COUNT(*) FROM csuFeesList;
SELECT * FROM csuFeesList;
SELECT COUNT(*) FROM discEnrollList;
SELECT * FROM discEnrollList;

SELECT COUNT(*) FROM enrollmentsList;
SELECT * FROM enrollmentsList;
SELECT COUNT(*) FROM facultyList;
SELECT * FROM facultyList;





\! echo '******************************'
\! echo Dropping Tables
\! echo '******************************'
source CSU-cleanup.sql

\! echo '******************************'
\! echo See if tables were dropped
\! echo '******************************'
show tables;

\! echo '******************************'
\! echo All done! Woot woot!
\! echo '******************************'
notee


