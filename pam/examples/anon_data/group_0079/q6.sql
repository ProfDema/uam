truncate query6;
INSERT INTO Query6(select cid, cname, lname as locname from customer, location where customer.lid = location.lid and cid not in (select cid from orders) order by cname);



select * from query6;
