
-- IN -> value must match one item from the list
-- NOT IN -> value must not match any time from the list
--BETWEEN -> value must be inside a range



SELECT name,price,price FROM product
WHERE category IN ('electronic','furniture');



SELECT name,price,price FROM product
WHERE category NOT IN ('electronic','furniture');



SELECT name,price,price FROM product
WHERE price BETWEEN 100 AND 200;


