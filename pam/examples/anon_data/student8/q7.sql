truncate query7;


CREATE VIEW salescostamount AS (

SELECT to_char(o.odate,'YYYYMM') as period, (o.price * o.quantity) AS salesamount, (p.cost * o.quantity) as salescost 

FROM orders o

LEFT JOIN product p ON (o.pid = p.pid)

WHERE o.status = 'S');



INSERT INTO Query7(

SELECT to_number(period,'999999'), sum(salesamount) AS sales, sum(salescost) as cost

FROM salescostamount

GROUP BY period

ORDER BY period ASC);



DROP VIEW salescostamount;



select * from query7;
