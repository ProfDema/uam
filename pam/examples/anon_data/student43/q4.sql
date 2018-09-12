truncate query4;


INSERT INTO Query4 (SELECT O.pid AS pid, pname, quantity*cost AS totalcost FROM orders O, product P WHERE status='S' AND O.pid=P.pid ORDER BY totalcost DESC);



select * from query4;
