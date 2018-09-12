truncate query2;
INSERT INTO Query2 (SELECT O.oid AS oid, O.pid AS pid , S.wid AS wid, O.quantity AS ordqty, S.quantity AS stockqty

                    FROM orders O, stock S

                    WHERE O.status = 'O' AND (O.quantity > S.quantity) AND O.shipwid = S.wid AND S.pid = O.pid

                   );







select * from query2;
