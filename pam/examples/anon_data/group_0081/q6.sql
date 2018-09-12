truncate query6;
INSERT into Query6

	Select c.cid as cid, c.cname as cname, l.lname as locname

	From customer c, location l

	Where c.lid = l.lid AND c.cid not in (select cid from orders)

	Order By cname;





select * from query6;
