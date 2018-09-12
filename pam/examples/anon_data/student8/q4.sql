truncate query4;


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





select * from query4;
