-- PostgreSQL Data Types
-- │
-- ├── Numeric
-- ├── Character/String
-- ├── Boolean
-- ├── Binary
-- ├── Date & Time
-- ├── UUID
-- ├── JSON
-- ├── Array
-- ├── Enum
-- ├── Composite
-- ├── Network
-- ├── Geometric
-- ├── XML
-- ├── Full Text Search
-- ├── Range
-- ├── Money
-- ├── Bit String
-- ├── Object Identifier
-- └── Custom Types


DROP TABLE IF EXISTS basic.products_basic;

CREATE TABLE basic.products_basic (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    stock INTEGER DEFAULT 0,
    total_views BIGINT DEFAULT 0,
    price NUMERIC(10,2),
    is_active BOOLEAN DEFAULT true
);



INSERT INTO basic.products_basic
    (name, description, stock, total_views, is_active)
VALUES
    ('Product 1', 'Description for Product 1', 100, 1200, TRUE),
    ('Product 2', 'Description for Product 2', 50, 850, TRUE),
    ('Product 3', 'Description for Product 3', 200, 3400, TRUE),
    ('Product 4', 'Description for Product 4', 75, 1500, FALSE),
    ('Product 5', 'Description for Product 5', 300, 5000, TRUE),
    ('Product 6', 'Description for Product 6', 120, 2200, TRUE),
    ('Product 7', 'Description for Product 7', 90, 1800, FALSE),
    ('Product 8', 'Description for Product 8', 45, 950, TRUE),
    ('Product 9', 'Description for Product 9', 160, 2700, TRUE),
    ('Product 10', 'Description for Product 10', 80, 1300, TRUE);

SELECT * FROM basic.products_basic;

SELECT id,name,price,is_active
FROM basic.products_basic
WHERE is_active;