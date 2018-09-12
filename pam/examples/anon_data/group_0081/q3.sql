truncate query3;
INSERT into Query3

	Select c.cid as cuid,c.cname as cuname,SUM(quantity*price) as totalsales

	From orders o,customer c

	Where status = 'S' AND c.cid = o.cid

	Group By c.cid

	Order By (totalsales) DESC;







select * from query3;
