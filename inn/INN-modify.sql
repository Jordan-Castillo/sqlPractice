/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : INN-modify.sql

* Purpose :

* Creation Date : 24-10-2017

* Last Modified : Tue 24 Oct 2017 01:44:02 PM DST

* Created By :  Jordan Castillo

* Email : jtcastil@calpoly.edu
_._._._._._._._._._._._._._._._._._._._._.*/
-- Add to roomsList a roomDescription column containing text that describes the room
ALTER TABLE roomsList
ADD COLUMN roomDescription VARCHAR(300);
--Give the rooms a description based on their roomName
UPDATE roomsList
SET roomDescription = 'Seeking refuge for events you aren\'t willing to talk about publicly? Then boy do we have the room for you! Located in the back of the premises, in a no-windowed room, this secretive bungalow will surely accomodate all of your hiding needs.'
WHERE roomName = 'Abscond or bolster';

UPDATE roomsList
SET roomDescription = 'For those that need a bright atmosphere to lighten their day, this room is for you. The traditional decor coupled with the light coloring and open floor plan of this room is sure to bring happiness to anyone\'s day.'
WHERE roomName = 'Convoke and sanguine';

UPDATE roomsList
SET roomDescription = 'For those of you who let your wallet do the talking for you. Provides the optimal experience to any couple seeking refuge at our Inn. Also comes equipped with an additional King bed so the kids can be kept at bay.'
WHERE roomName = 'Frugal not apropos';

UPDATE roomsList
SET roomDescription = 'Not all people chose this hotel for their main destination, and we understand this so much that we made a room just for those folks. For one of our lowest rates, you could enjoy the ammenities that all our guest enjoy, while enjoying our rustic decor.'
WHERE roomName = 'Harbinger but bequest';

UPDATE roomsList
SET roomDescription = 'For those of who you see themselves as among the finer things in life, but who arent willing to pay the price for the finer things. This room has all the gaudy decor you love, whilst being a budget friendly room.'
WHERE roomName = 'Immutable before decorum';

UPDATE roomsList
SET roomDescription = 'When you arent sure where the rest of your travels will be taking you, this room is the perfect match for you.  Not all who wander are lost.'
WHERE roomName = 'Interim but salutary';

UPDATE roomsList
SET roomDescription = 'The poor mans room as we like to call it. For those who ask for a lot but are willing to give only a little. Comfortably sleeps 4 but we know you are gonna be testing these boundaries.'
WHERE roomName = 'Mendicant with cryptic';

UPDATE roomsList
SET roomDescription = 'Sometimes we just need a cozy get-away without breaking the bank. This room satisfies these desires by providing a large King bed at a modest price.'
WHERE roomName = 'Recluse and defiance';

UPDATE roomsList
SET roomDescription = 'This the room to take anyone who is unconvinced that you do no wrongdoing. Once they enter, as the room implies, they will free you of assumed wrongdoing.'
WHERE roomName = 'Riddle to exculpate';

UPDATE roomsList
SET roomDescription = 'This room will bring joy to any penny-pincher out there. We took the time to make sure all items in the room are of the cheapest possible quality, and awarded ourselves for doing so.'
WHERE roomName = 'Thrift and accolade';

-- Output the contents of roomsList
SELECT *
FROM roomsList
ORDER BY roomID \G
 
