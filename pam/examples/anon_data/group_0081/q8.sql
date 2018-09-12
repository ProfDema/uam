truncate query8;
Create View one as

	Select r.custid as cid , r.custref as custref, sum(r.commission*o.quantity*o.price) as commission

	From referral r, orders o

	Where r.custref = o.cid

	Group BY r.custref, r.custid;



INSERT into Query8

	Select o.cid as cid, c.cname as cname, SUM(commission) as commission

	From one o, customer c

	Where c.cid = o.cid

	Group By o.cid , cname

	Order By cname;



DROP VIEW one;

select * from query8;
