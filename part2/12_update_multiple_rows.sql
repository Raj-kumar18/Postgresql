
SELECT name,price,category,isActive
FROM product
WHERE category = 'stationary';


UPDATE product
SET price = ROUND(price * 1.10 ,2)
WHERE category ='stationary';