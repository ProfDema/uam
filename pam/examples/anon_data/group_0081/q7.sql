truncate query7;
INSERT into Query7

	Select cast(TO_CHAR(o.odate,'yyyymm') as integer)  as period, SUM(o.price*o.quantity) as sales , SUM(o.quantity * p.cost) as cost

	From orders o , product p

	Where o.pid = p.pid AND status = 'S'

	Group By period

	Order By period;







select * from query7;
