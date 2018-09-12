truncate query3;
	--[5 Marks] Find total sales by customer and sort them in decreasing order of the sales amount. The sales amount for each order is the product

	--of quantity and price, on condition that the order status is ‘S’ (that is an order is considered a sale if an only if the order is shipped).

	INSERT INTO query3

	SELECT c.cid as cuid, c.cname as cuname, sum(o.quantity*o.price) as totalsales

	FROM  orders o, customer c 

	WHERE o.cid = c.cid AND o.status = 'S'

	GROUP BY c.cid, c.cname

	ORDER BY totalsales DESC;



select * from query3;
