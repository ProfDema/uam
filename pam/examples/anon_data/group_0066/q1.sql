truncate query1;
SET search_path TO A2;

INSERT INTO Query1 (

    SELECT cu.cid AS cuid, cu.cname AS cuname, ref.cid AS refid, ref.cname AS refname

    FROM referral

    JOIN customer cu ON referral.custid=cu.cid

    JOIN customer ref ON referral.custref=ref.cid

    ORDER BY cuname

);



select * from query1;
