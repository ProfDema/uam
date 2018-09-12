truncate query5;
INSERT INTO Query5(select pid, pname, introdate from product where pid not in (select pid from orders) order by pname);



select * from query5;
