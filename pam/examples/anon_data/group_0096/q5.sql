truncate query5;


INSERT INTO Query5 (SELECT p.pid AS pid, p.pname AS pame, p.introdate AS introdate FROM product p WHERE p.pid NOT IN (SELECT pid from orders) ORDER BY p.pname ASC);





select * from query5;
