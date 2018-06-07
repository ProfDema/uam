set search_path to a1;

-- Question 1
-- select all products with description containing the word book
-- ordered by id

SELECT *
FROM products
WHERE 'book' IN description
ORDER BY id;
