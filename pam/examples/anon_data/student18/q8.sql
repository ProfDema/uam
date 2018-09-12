truncate query8;


INSERT INTO query8 (select c.cid, c.cname, sum(r.commission * o.quantity * o.price) as com from customer c, referral r, orders o where c.cid = r.custid and o.cid = r.custref group by c.cid order by c.cname asc);



select * from query8;
