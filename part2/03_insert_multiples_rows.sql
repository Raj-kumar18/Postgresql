INSERT INTO product (name, category, price, stock, description)
VALUES
('iPhone 15', 'Electronics', 79999.00, 15, 'Apple smartphone with A16 Bionic chip'),
('Samsung Galaxy S24', 'Electronics', 74999.00, 20, 'Flagship Android smartphone'),
('Dell Inspiron 15', 'Laptop', 58999.00, 10, '15-inch laptop with Intel Core i5'),
('MacBook Air M3', 'Laptop', 114999.00, 8, 'Apple lightweight laptop'),
('Sony WH-1000XM5', 'Accessories', 28999.00, 25, 'Noise-cancelling wireless headphones'),
('Boat Rockerz 450', 'Accessories', 1499.00, 50, 'Bluetooth over-ear headphones'),
('Logitech MX Master 3S', 'Accessories', 8999.00, 30, 'Wireless productivity mouse'),
('Nike Air Max 270', 'Footwear', 9999.00, 18, 'Comfortable running shoes'),
('Puma Sports T-Shirt', 'Clothing', 1299.00, 40, 'Dry-fit sports t-shirt'),
('Wildcraft Backpack', 'Bags', 2499.00, 22, '35L travel backpack');
 

SELECT price FROM product WHERE price >= 100