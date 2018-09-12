truncate query10;
insert into Query10 (select location.lid, lname, coalesce(sum(price), 0) as totalsales from location left join warehouse on location.lid=warehouse.lid left join orders on warehouse.wid=orders.shipwid group by lname, location.lid order by lname asc);





select * from query10;
