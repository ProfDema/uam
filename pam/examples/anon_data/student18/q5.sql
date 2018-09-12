truncate query5;


INSERT INTO query5 (select pid, pname, introdate from product p where not exists (select pid from orders where p.pid = pid) order by p.pname);





select * from query5;
