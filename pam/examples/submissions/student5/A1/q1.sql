truncate query1;


CREATE VIEW join1 AS (SELECT rf.custref AS cuid, rf.custid AS refid, cu.cname AS refname FROM referral rf JOIN customer cu ON cu.cid = custid);



INSERT INTO QUERY1 (SELECT j1.cuid, cu.cname AS cuname, j1.refid, j1.refname FROM join1 j1 JOIN customer cu ON j1.cuid = cu.cid ORDER BY cu.cname ASC); 



DROP VIEW join1;

select * from query1;
