truncate query5;
INSERT into Query5

	Select pid, pname, introdate

	From product

	Where pid not in (Select pid from orders)

	Order By pname;





select * from query5;
