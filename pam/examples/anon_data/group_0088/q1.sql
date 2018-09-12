truncate query1;
	--[5 Marks] For each customer, find (if it exists) the customer which referred it. Report the id and the name of customer and the id and the

	--name of the customer which referred it. For example, if the table referral contains the tuple (100, 200, 0.5), assuming the name of the

	--customer with id equal to 100 is customer100 and the name of customer with id equal to 200 is customer200 you need to report the following:

	--200 customer200 100 customer100

	INSERT INTO query1

	SELECT r.custref as cuid, c2.cname as cuname, r.custid as refid, c1.cname as refname

	FROM  referral r, customer c1, customer c2

	WHERE r.custid = c1.cid AND r.custref = c2.cid

	ORDER BY cuname ASC;



select * from query1;
