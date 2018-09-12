truncate query2;


INSERT INTO QUERY2 (

SELECT ord.oid, ord.pid, st.wid, ord.quantity AS ordqty, st.quantity AS stockqty 

FROM orders ord JOIN stock st ON ord.pid = st.pid and ord.shipwid = st.wid 

WHERE ord.quantity > st.quantity AND ord.status = 'O');



select * from query2;
