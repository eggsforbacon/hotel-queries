--1.a.

SELECT * FROM Hotel;

--1.b.

SELECT * FROM Hotel WHERE city = 'London';

--1.c.

SELECT * FROM Guest WHERE POSITION('London' IN guestAddress) != 0 ORDER BY guestName ASC;

--The lame way
SELECT * FROM Guest WHERE guestAddress LIKE '%London%' ORDER BY guestName ASC;

--1.d.

SELECT * FROM Room WHERE (type_ LIKE 'Family' OR type_ LIKE 'Double') AND (price < 80) ORDER BY price ASC;

--2.a.

SELECT COUNT(*) FROM Hotel;

--2.b.

SELECT AVG(price) FROM Room;

--2.c.

SELECT DISTINCT COUNT(guestName) FROM Guest WHERE guestName LIKE '%Juan%';

--2.d.

SELECT SUM(price) FROM Room WHERE type_ LIKE '%Double%';