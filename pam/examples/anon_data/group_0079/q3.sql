truncate query3;
INSERT INTO Query3(select distinct c.cid as cuid, c.cname as cuname, CAST(SUM(o.quantity*o.price) as NUMERIC(12,2)) as totalsales from orders o, customer c where status = 'S' and o.cid = c.cid group by cuid order by totalsales desc);



select * from query3;
