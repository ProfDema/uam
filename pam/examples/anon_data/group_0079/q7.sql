truncate query7;
INSERT INTO Query7(select distinct CAST(CAST(EXTRACT(year from o.odate) as text) || CAST(EXTRACT(month from o.odate) as text) as INTEGER) as period, CAST(SUM(o.price * o.quantity) as NUMERIC(10,2)) as sales, CAST(SUM(p.cost * o.quantity) as NUMERIC(10,2)) as cost from orders o, product p where o.pid = p.pid group by period order by period);



select * from query7;
