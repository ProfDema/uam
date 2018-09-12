truncate query8;
    INSERT INTO Query8 (

    SELECT  c.cid as cid,

            c.cname as cname,

            CAST(SUM(r.commission * o.quantity * o.price) as NUMERIC(10,2))AS commission



    FROM    orders o,

            referral r,

            customer c



    WHERE   r.custref = o.cid AND

            r.custid = c.cid



    GROUP BY c.cid, c.cname

    ORDER BY cname ASC

	);





select * from query8;
