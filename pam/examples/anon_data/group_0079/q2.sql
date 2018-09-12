truncate query2;
INSERT INTO Query2(select o.oid as oid, o.pid as pid, s.wid as wid, CAST(o.quantity as NUMERIC(10,2)) as ordqty, CAST(s.quantity as NUMERIC(10,2)) as stockqty from orders o, stock s where o.status = 'O' and o.pid = s.pid and o.quantity > s.quantity);



select * from query2;
