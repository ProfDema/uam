truncate query7;


CREATE VIEW dateconvert as

SELECT oid, cid, pid, to_char(odate, 'YYYYMM') as odate, shipwid, quantity, price, status

FROM orders

WHERE status = 'S';



CREATE VIEW sales as

SELECT odate, sum(d.price*d.quantity) as sale

FROM dateconvert d

GROUP BY odate;



CREATE VIEW costs as

SELECT odate, sum(p.cost*d.quantity) as cost

FROM dateconvert d, product p

WHERE d.pid = p.pid

GROUP BY d.odate;



INSERT INTO query7(

SELECT cast (s.odate as integer) as period, s.sale as sales, c.cost as costs

FROM sales s, costs c

WHERE s.odate = c.odate

GROUP BY s.odate, s.sale, c.cost

ORDER BY s.odate ASC);





drop view dateconvert, sales, costs;



select * from query7;
