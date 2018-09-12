truncate query5;


INSERT INTO Query5 (

SELECT p.pid AS pid, p.pname as pame, p.introdate AS introdate 

FROM product AS p 

WHERE p.pid NOT IN (SELECT pid FROM orders) 

ORDER By pname);



select * from query5;
