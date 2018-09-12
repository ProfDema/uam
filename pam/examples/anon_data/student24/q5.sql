truncate query5;
CREATE VIEW productIntro as SELECT p.pid, p.pname, p.introdate

	FROM product as p

	LEFT JOIN orders o ON p.pid = o.pid

	WHERE o.pid IS NULL

	ORDER BY pname ASC;

insert into query5 select * FROM productIntro;

DROP VIEW IF EXISTS productIntro CASCADE;



select * from query5;
