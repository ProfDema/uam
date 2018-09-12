truncate query8;
-- Report commission earned by customers, doesn't matter if shipped'

-- ARE we supposed to report the total amount earned, the commission amount or some other value??



INSERT INTO Query8 (SELECT custid cid, cname, SUM(totalsales*commission) commision FROM referral R JOIN customer C ON R.custid=C.cid JOIN (SELECT o.cid cid, SUM(o.quantity * o.price) totalsales FROM orders o WHERE o.status = 'S' GROUP BY o.cid) S ON S.cid=C.cid GROUP BY R.custref, C.cname, R.custid ORDER BY cname ASC);



-- Check referral



select * from query8;
