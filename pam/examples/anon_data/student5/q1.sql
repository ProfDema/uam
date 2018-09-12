truncate query1;
create view customer_names as 

select * from referral 

JOIN customer 

on referral.custid = customer.cid;



insert into query1

select customer_names.custref as cuid, 

customer.cname as cuname, 

customer_names.cid as refid, 

customer_names.cname as refname 

from customer INNER JOIN 

customer_names ON customer.cid = customer_names.custref

order by cuname;



drop view customer_names;





select * from query1;
