truncate query6;
INSERT INTO query6(

SELECT c.cid, c.cname, l.lname AS locname 

FROM customer c NATURAL JOIN location l 

WHERE c.cid NOT IN (SELECT cid FROM orders) 

ORDER BY c.cname ASC);





INSERT INTO query7(SELECT DISTINCT CAST(CAST(EXTRACT(year FROM o.odate) AS text) || CAST(EXTRACT(month FROM o.odate) AS text) AS integer) AS period, SUM(o.quantity*o.price) AS sales, SUM(p.cost*o.quantity) AS cost

FROM customer AS c NATURAL JOIN orders AS o NATURAL JOIN product As p

WHERE o.status = 'S'

GROUP By period

ORDER BY period ASC);





select * from query6;
