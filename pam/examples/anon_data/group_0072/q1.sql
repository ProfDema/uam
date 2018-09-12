truncate query1;
INSERT INTO query1(

    SELECT c.cid, c.cname, r.cid, r.cname

    FROM referral ref, customer c, customer r

    WHERE ref.custid = r.cid AND ref.custref = c.cid

    ORDER BY c.cname);





select * from query1;
