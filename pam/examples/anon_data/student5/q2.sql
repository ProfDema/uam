truncate query2;


insert into query2 

select oid, orders.pid as pid, 

orders.shipwid as wid, 

orders.quantity as ordqty, 

stock.quantity as stockqty 

from orders join stock 

on orders.pid = stock.pid 

where orders.shipwid = stock.wid 

AND orders.status = 'O' 

AND orders.quantity > stock.quantity;







select * from query2;
