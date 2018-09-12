truncate query6;
insert into Query6 (select customer.cid, cname, lname as locname from location natural join customer where customer.cid not in (select cid from orders) order by cname asc);





select * from query6;
