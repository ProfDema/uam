truncate query1;
--

INSERT INTO query1(

   SELECT cu.cid, cu.cname, cref.cid, cref.cname

   FROM referral, customer AS cu, customer AS cref

   WHERE custref = cu.cid AND custid = cref.cid

   ORDER BY cu.cname

);

--

select * from query1;
