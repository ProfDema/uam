truncate query8;
INSERT INTO query8(

    SELECT ref.custid, c.cname, 

	SUM(ref.commission/100 * (o.quantity * o.price))

    FROM referral ref, customer c, customer r, orders o

    WHERE ref.custid = c.cid AND ref.custref = r.cid AND o.cid = r.cid

    GROUP BY ref.custid, c.cname

    ORDER BY c.cname);





select * from query8;
