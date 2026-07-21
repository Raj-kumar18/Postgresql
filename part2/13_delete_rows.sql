
INSERT INTO product(name,category,price,stock,isActive,description)
VALUES
('Canon EOS 1500D', 'Cameras', 42999.00, 6, true, 'DSLR camera with 18-55mm lens'),
('Mi Smart Band 9', 'Wearables', 3499.00, 50, true, 'Fitness tracker with AMOLED display'),
('Old Model Printer', 'Electronics', 4999.00, 0, false, 'Discontinued inkjet printer');

SELECT name,category,isActive
FROM product
WHERE isActive = false;


DELETE FROM product
WHERE isActive = false;
