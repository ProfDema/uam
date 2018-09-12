truncate query5;
INSERT INTO Query5 (

SELECT p.pid, p.pname, p.introdate

FROM product p

WHERE p.pid <> ALL (SELECT pid FROM orders)

ORDER BY p.pname);



select * from query5;
