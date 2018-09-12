truncate query6;


INSERT INTO query6 (select cid, cname, lid from customer c where not exists (select cid from orders where c.cid = cid) order by cname);



select * from query6;
