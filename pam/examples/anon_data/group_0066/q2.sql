truncate query2;


--Note that ORDER BY was not specified in this question!

INSERT INTO Query2 (

    SELECT ord.oid AS oid, ord.pid AS pid, ord.shipwid AS wid,

    CAST(ord.quantity AS NUMERIC(10,2)) AS ordqty, CAST(st.quantity AS NUMERIC(10,2)) AS stockqty

    FROM orders ord JOIN stock st ON (ord.pid=st.pid AND ord.shipwid=st.wid)

    WHERE ord.status='O' AND st.quantity < ord.quantity

);



select * from query2;
