truncate query1;
    INSERT INTO Query1 (

    SELECT  c1.cid as cuid,

            c1.cname as cuname,

            c2.cid as refid,

            c2.cname as refname



    FROM    referral r,

            customer c1,

            customer c2



    WHERE   c1.cid = r.custref And

            c2.cid = r.custid



    ORDER BY cuname ASC

    );





select * from query1;
