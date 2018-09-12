truncate query10;


create view warehouse_location as

select wid, location.lid as lid,  lname from warehouse 

join location on warehouse.lid = location.lid 

group by wid, lname, location.lid;



insert into query10

select warehouse_location.lid, warehouse_location.lname,  sum(orders.quantity*orders.price) as totalsales from orders join warehouse_location on warehouse_location.wid = orders.shipwid where orders.status = 'S' group by warehouse_location.lid, warehouse_location.lname order by warehouse_location.lname; 



drop view warehouse_location;

select * from query10;
