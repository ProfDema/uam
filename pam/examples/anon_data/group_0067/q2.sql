truncate query2;
insert into Query2 (select oid, orders.pid, wid, orders.quantity as ordqty, stock.quantity as stockqty from orders, stock where stock.quantity < orders.quantity and status='O' and orders.pid = stock.pid);







select * from query2;
