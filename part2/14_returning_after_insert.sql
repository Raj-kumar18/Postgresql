
-- returning is usually returns back the rows immediately after insert,update and delete


INSERT INTO product(name,category,price,stock,isActive,description)
VALUES
('Old Model Printer', 'Electronics', 4999.00, 0, false, 'Discontinued inkjet printer')
RETURNING id,name,price,category,stock;