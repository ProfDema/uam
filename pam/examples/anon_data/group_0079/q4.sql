truncate query4;
INSERT INTO Query4( select distinct p.pid as pid, p.pname as pname, CAST(SUM(p.cost*o.quantity) as NUMERIC(12,2)) as totalcost from orders o, product p where status = 'S' and o.pid = p.pid group by p.pid order by totalcost);



select * from query4;
