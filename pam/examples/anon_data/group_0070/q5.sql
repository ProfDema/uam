truncate query5;
INSERT INTO Query5(SELECT DISTINCT p.pid AS pid, p.pname AS pname, p.introdate as introdate FROM orders o, product p 

	WHERE p.pid NOT IN(SELECT pid FROM orders) ORDER BY p.pname);





select * from query5;
