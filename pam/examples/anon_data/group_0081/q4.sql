truncate query4;
INSERT into Query4

	Select p.pid as pid ,p.pname as pname ,SUM(cost*o.quantity) as totalcost

	From product p , orders o

	Where status = 'S' AND p.pid = o.pid

	Group By p.pid

	Order By totalcost ASC;





select * from query4;
