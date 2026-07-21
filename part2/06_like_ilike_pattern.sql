--like -> case sensitive pattern match
--ilike -> case insensitive pattern match
-- % -> means any no of chars
-- exactly one char

--the % after wireless means anything can come after it

SELECT name,price FROM product
WHERE name LIKE 'wireless%';


-- --Desk,desk,DESK
-- SELECT name,price FROM product
-- WHERE name ILIKE '%desk%';



SELECT name,category ,description FROM product
WHERE name ILIKE '%chair%'
OR description ILIKE ='%chair%';








