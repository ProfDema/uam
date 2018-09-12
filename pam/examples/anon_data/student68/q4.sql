truncate query4;
CREATE VIEW shipped as

SELECT pid, quantity

FROM orders

WHERE status = 'S';



INSERT INTO query4(

SELECT s.pid as pid, p.pname as pname, p.cost*s.quantity as totalcost

FROM shipped s, product p

WHERE s.pid = p.pid

GROUP BY s.pid, p.pname, p.cost, s.quantity

ORDER BY totalcost ASC);



drop view shipped;





select * from query4;
