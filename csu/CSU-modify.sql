/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : CSU-modify.sql

* Purpose :

* Creation Date : 23-10-2017

* Last Modified : Mon 23 Oct 2017 08:20:33 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
--1) Delete tuples from discEnrollList that arent:
--		'Engineering' disciplines from CP SLO or CP Pomona
--		Long Beach State discipline with more than 200 grad students
--		all enrollments in 'Computer and Info. Sciences' for schools with more than 500 ugrad majors
-- join discEnrollList and disciplineList on disciplineID
-- join discEnrollList and CampusesList on campusID
DELETE FROM discEnrollList
WHERE !((campusID = 20 OR campusID = 14) AND disciplineID = 9)
AND !(campusID = 9 AND gradEnrollment > 200)
AND !(disciplineID = 7 AND ugradEnrollment > 500);

--2) Display remaining contents of discEnrollList
SELECT *
FROM discEnrollList
ORDER BY campusID, disciplineID;

--3) Keep in csuFeesList only information that satisfies all following conditions:
--		fee greater than $2500
--		year is 2002, 2004, 2005, or 2006
--		campus is either CP SLO, CP Pomona, or SJSU
DELETE FROM csuFeesList
WHERE (academicYear != 2002 AND academicYear != 2004 AND academicYear != 2005 AND academicYear != 2006)
OR (campusFee < 2500)
OR (campusID != 20 AND campusID != 14 AND campusID != 19);

--4) Show remaining contents of csuFeesList table
SELECT *
FROM csuFeesList
ORDER BY campusID, academicYear;

