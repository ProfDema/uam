-- Add below your SQL statements. 
-- You can create intermediate views (as needed). Remember to drop these views after you have populated the result tables.
-- You can use the "\i a2.sql" command in psql to execute the SQL commands in this file.
SET search_path TO A2;
-- Query 1 statements

INSERT INTO Query1(
SELECT c.cid as cuid, c.cname as cuname,rfinal.cid as refid,rfinal.cname as refname
FROM customer c
LEFT JOIN referral r ON (c.cid = r.custid)
LEFT JOIN customer rfinal ON (r.custref = rfinal.cid)
WHERE rfinal.cid is not NULL
ORDER BY c.cname ASC);


-- Query 2 statements

INSERT INTO Query2(
SELECT o.oid, o.pid, o.shipwid as wid, o.quantity as ordqty, s.quantity as stockqty
FROM orders o
LEFT JOIN stock s ON (o.shipwid = s.wid AND o.pid = s.pid)
WHERE o.quantity > s.quantity AND o.status = 'O');

-- Query 3 statements

CREATE VIEW salesamount AS (
SELECT c.cid as cuid, c.cname as cuname, (o.quantity * o.price) as salesamount
FROM customer c
LEFT JOIN orders o ON(c.cid = o.cid)
WHERE o.status = 'S');

INSERT INTO Query3(
SELECT cuid,cuname,sum(salesamount) as totalsales
FROM salesamount
GROUP BY cuid,cuname
ORDER BY totalsales DESC);

DROP VIEW salesamount;


-- Query 4 statements

CREATE VIEW salescost AS (
SELECT p.pid, p.pname, (o.quantity * p.cost) as salescost
FROM product p
LEFT JOIN orders o ON(p.pid = o.pid)
WHERE o.status = 'S');

INSERT INTO Query4(
SELECT pid,pname,sum(salescost) as totalcost
FROM salescost
GROUP BY pid,pname
ORDER BY totalcost ASC);

DROP VIEW salescost;


-- Query 5 statements

INSERT INTO Query5(
SELECT p.pid, p.pname, p.introdate 
FROM product p
LEFT JOIN orders o ON (p.pid = o.pid)
WHERE o.pid is NULL
ORDER BY pname ASC);


-- Query 6 statements

INSERT INTO Query6(
SELECT c.cid, c.cname, l.lname as locname
FROM customer c
LEFT JOIN orders o ON (c.cid = o.cid)
LEFT JOIN location l ON (c.lid = l.lid)
WHERE o.cid is NULL
ORDER BY c.cname ASC);


-- Query 7 statements

CREATE VIEW salescostamount AS (
SELECT to_char(o.odate,'YYYYMM') as period, (o.price * o.quantity) AS salesamount, (p.cost * o.quantity) as salescost 
FROM orders o
LEFT JOIN product p ON (o.pid = p.pid)
WHERE o.status = 'S');

INSERT INTO Query7(
SELECT to_number(period,'999999'), sum(salesamount) AS sales, sum(salescost) as cost
FROM salescostamount
GROUP BY period
ORDER BY period ASC);

DROP VIEW salescostamount;

-- Query 8 statements

CREATE VIEW salescommission AS(
SELECT r.custid as cid, c.cname, (r.commission/100 * o.quantity * o.price) AS salescommission
FROM referral r
LEFT JOIN orders o ON (r.custref = o.cid)
LEFT JOIN customer c ON (r.custid = c.cid)
WHERE o.oid is not NULL);

INSERT INTO Query8(
SELECT cid,cname, sum(salescommission) as commission
FROM salescommission
GROUP BY cid,cname
ORDER BY cname ASC);

DROP VIEW salescommission;



-- Query 9 statements

CREATE VIEW salesamount AS(
SELECT p.pid, p.introdate AS date, (o.quantity*o.price) AS salesamount
FROM product p
LEFT JOIN orders o ON (p.pid = o.pid)
WHERE p.introdate <= '2015-12-31' AND (o.status = 'S' or o.status is null));

INSERT INTO Query9(
SELECT pid, date, 
CASE WHEN sum(salesamount) is null THEN 0
ELSE sum(salesamount) END AS totalsales
FROM salesamount
GROUP BY pid,date
ORDER BY date ASC);

DROP VIEW salesamount;

-- Query 10 statements

CREATE VIEW salesamount AS(
SELECT l.lid, l.lname, (o.quantity * o.price) AS salesamount
FROM orders o
LEFT JOIN warehouse w ON (o.shipwid = w.wid)
LEFT JOIN location l ON (w.lid = l.lid)
WHERE o.status = 'S');

INSERT INTO Query10(
SELECT lid,lname, sum(salesamount) as totalsales
FROM salesamount
GROUP BY lid,lname
ORDER BY lname ASC);

DROP VIEW salesamount;




