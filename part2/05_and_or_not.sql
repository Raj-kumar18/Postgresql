
--AND -> every condition must be true
--OR -> atleast one codition must be true
--NOT -> reverse/exclude a condition

--products where it is electronic but price > 100

SELECT name,category,price
FROM product
WHERE category="electronic"
AND price > 100;



--products where category is electronics or furniture

SELECT name,category,price
FROM product
WHERE category = "electronic"
OR category="furniture";



SELECT name,category
FROM product
WHERE NOT category = "electronic";



SELECT name,category,price,stock
FROM product
WHERE (category="electronic" OR category="furniture")
AND stock > 0;

