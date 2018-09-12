truncate query8;


INSERT INTO Query8 (

    SELECT re.custid AS cid, cu.cname AS cname, CAST(SUM((temp.totalsales * re.commission/100)) AS NUMERIC(10,2)) AS commission

    FROM referral re JOIN (SELECT ord.cid cid, SUM(ord.price * ord.quantity) totalsales FROM orders ord GROUP BY ord.cid) temp

    ON re.custref = temp.cid JOIN customer cu ON re.custid=cu.cid

    GROUP BY re.custid, cu.cname

    ORDER BY cname

);



select * from query8;
