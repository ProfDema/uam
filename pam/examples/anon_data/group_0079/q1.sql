truncate query1;
INSERT INTO Query1(select r.custref as cuid, c1.cname as cuname, r.custid as refid, c2.cname as refname from referral r, customer c1, customer c2 where r.custref = c1.cid and r.custid = c2.cid order by c1.cname);



select * from query1;
