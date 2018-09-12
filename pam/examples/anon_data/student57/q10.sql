truncate query10;
INSERT INTO QUERY10 (SELECT location.lid, lname, price * quantity AS totalsales 

					 FROM (SELECT * FROM orders LEFT JOIN warehouse ON shipwid = wid WHERE status = 'S') AS b

					 LEFT JOIN location ON location.lid = b.lid ORDER BY lname ASC);



select * from query10;
