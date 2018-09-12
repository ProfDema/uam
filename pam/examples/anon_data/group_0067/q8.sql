truncate query8;
insert into Query8 (select customer.cid, cname, sum(commission*price*quantity) from customer, referral, orders where customer.cid=referral.custref and orders.cid=referral.custref group by customer.cid order by cname asc);





select * from query8;
