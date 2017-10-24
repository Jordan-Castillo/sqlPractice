/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : BAKERY-modify.sql

* Purpose :

* Creation Date : 23-10-2017

* Last Modified : Mon 23 Oct 2017 06:50:13 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
--1) Remove from goodsList information about all pastries except for 'Cake'
DELETE FROM goodsList
WHERE category != 'Cake';

--2) Bakery manager is going to update prices in upcoming questions...nothing to do here
--3) Increase prices of 'Chocolate' and 'Opera' cake by 20%
UPDATE goodsList
SET price = price * 1.2
WHERE (goodsFlavor = 'Chocolate')
OR (goodsFlavor = 'Opera');

--4) Reduce the prices of 'Lemon' and 'Napoleon' cake by $2
UPDATE goodsList
SET price = price - 2
WHERE (goodsFlavor = 'Lemon')
OR (goodsFlavor = 'Napoleon');

--5) Reduce the price of all other cakes by 10%
UPDATE goodsList
SET price = price * .9
WHERE (goodsFlavor != 'Chocolate')
AND (goodsFlavor != 'Opera')
AND (goodsFlavor != 'Lemon')
AND (goodsFlavor != 'Napoleon');
--6) Show the contents of goodsList table
SELECT *
FROM goodsList
ORDER BY goodsID;

