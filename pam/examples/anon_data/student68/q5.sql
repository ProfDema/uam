truncate query5;
CREATE VIEW never AS

SELECT pid

FROM product

EXCEPT

SELECT pid

FROM orders;



INSERT INTO query5(

SELECT p.pid as pid, p.pname as pname, p.introdate as introdate

FROM never n, product p

WHERE p.pid = n.pid

ORDER BY p.pname ASC);



drop view never;







select * from query5;
