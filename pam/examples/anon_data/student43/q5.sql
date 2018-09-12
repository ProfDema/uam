truncate query5;


INSERT INTO Query5 (SELECT O.pid AS pid, pname, introdate FROM product P, orders O WHERE P.pid=O.pid AND cid=NULL ORDER BY pname);



select * from query5;
