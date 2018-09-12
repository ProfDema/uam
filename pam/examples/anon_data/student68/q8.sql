truncate query8;
CREATE VIEW madepurchases as

SELECT r.custid as custid, sum(r.commission*(o.price*o.quantity)) as commission 

FROM referral r, orders o

WHERE r.custref = o.cid

GROUP BY r.custid, o.quantity, o.price, r.commission;



INSERT INTO query8(

SELECT m.custid as cid, c.cname as cname, sum(m.commission) as commission

FROM madepurchases m, customer c

WHERE m.custid = c.cid 

GROUP BY m.custid, c.cname

ORDER BY c.cname ASC);



drop view madepurchases;





select * from query8;
