truncate query1;
SET search_path TO A2;

create view q1 as (select * from customer);

create view q2 as (select * from customer);

INSERT INTO query1(select q1.cid, q1.cname, q2.cid, q2.cname from referral, q1, q2 where q1.cid = custref AND q2.cid = custid ORDER BY q1.cname ASC);

drop view q1;

drop view q2;





select * from query1;
