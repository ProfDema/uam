truncate query2;
CREATE VIEW stock_orders AS SELECT o.oid as oid, o.pid as pid, s.wid as wid, o.quantity as ordqty, s.quantity as stockqty FROM orders AS o JOIN stock AS s ON o.pid = s.pid WHERE o.status='O';

INSERT INTO QUERY2 (SELECT * FROM stock_orders WHERE ordqty > stockqty);

DROP VIEW stock_orders;



select * from query2;
