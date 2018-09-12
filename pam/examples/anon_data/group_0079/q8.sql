truncate query8;
INSERT INTO Query8(select distinct customer.cid as cid, customer.cname as cname, CAST(SUM(commission*price*quantity) as NUMERIC(10,2)) as commission from referral, customer, orders where custid = customer.cid and orders.cid = custref group by customer.cid order by cname);



select * from query8;
