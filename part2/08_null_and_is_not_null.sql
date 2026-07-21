

--NULL -> missing/unknow value
-- u ,should not check null using = null
--IS NULL
--IS NOT NULL


SELECT name,description FROM product
WHERE description IS NULL;



SELECT name,description FROM product
WHERE description IS NOT NULL;







