truncate query9;
CREATE VIEW intro as

SELECT pid, introdate

FROM product 

WHERE introdate <= '31 Dec 2015';



CREATE VIEW shipped as

SELECT oid, pid, quantity, price

FROM orders

WHERE status = 'S';



INSERT INTO query9(

SELECT i.pid as pid, i.introdate as date, (s.quantity*s.price) as totalsales

FROM intro i, shipped s

WHERE i.pid = s.pid

GROUP BY i.pid, i.introdate, s.quantity, s.price

ORDER BY i.introdate ASC);



drop view intro, shipped;





select * from query9;
