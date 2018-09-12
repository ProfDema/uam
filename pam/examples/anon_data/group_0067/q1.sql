truncate query1;
insert into Query1 (select referral.custid as cuid, customer.cname as cuname, referral.custref as refid, customer2.cname as refname from referral, customer, customer as customer2 where customer.cid=referral.custid and customer2.cid=referral.custref order by cuname asc);







select * from query1;
