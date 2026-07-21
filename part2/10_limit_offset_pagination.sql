
--limit - how many rows you want to return
--offset - how many rown we want to skip


SELECT name,price FROM product
ORDER BY name ASC
LIMIT 5;



SELECT name,price FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 0;

ECT name,price FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 5;

-- (page-1)*limit
--(2-1)*5-> 5
--(3-1)*5-> 10

ECT name,price FROM product
ORDER BY name ASC
LIMIT 5 OFFSET 10;