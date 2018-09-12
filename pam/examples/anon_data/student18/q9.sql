truncate query9;


INSERT into query9 (select p.pid, p.introdate, SUM(o.quantity * o.price) as totalsales from orders o, product p where o.pid = p.pid and p.introdate <= '2015-12-31' and o.status = 'S' group by p.pid order by p.introdate asc);



select * from query9;
