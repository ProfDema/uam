truncate query5;


CREATE VIEW r1 AS

(SELECT pid FROM product) EXCEPT (SELECT DISTINCT pid FROM orders);



CREATE VIEW r2 AS

SELECT pid, pname AS pame, introdate 

FROM r1 NATURAL JOIN product

ORDER BY pname ASC;



INSERT INTO query5(SELECT * FROM r2);



DROP VIEW IF EXISTS r2;

DROP VIEW IF EXISTS r1;



select * from query5;
