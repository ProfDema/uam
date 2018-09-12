truncate query9;
INSERT INTO Query9

	Select o.pid as pid , p.introdate as date, SUM(o.quantity*o.price) as totalsales

	From product p , orders o

	Where p.pid = o.pid AND p.introdate<='31 Dec 2015' AND o.status ='S'

	Group By o.pid, p.introdate

	Order By introdate;





select * from query9;
