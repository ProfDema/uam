truncate query5;


INSERT INTO Query5 (SELECT t1.pid, p.pname, p.introdate FROM ((SELECT pid FROM product) EXCEPT (SELECT pid FROM orders)) AS t1, product AS p WHERE p.pid = t1.pid ORDER BY pname ASC);



select * from query5;
