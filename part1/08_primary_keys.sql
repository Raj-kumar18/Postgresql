

DROP TABLE IF EXISTS basic.sales;

CREATE TABLE basic.sales(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basic.sales(title,price)
VALUES
('sale1',200),
('sale2',151),
('sale3',455);

SELECT * FROM basic.sales;
SELECT * FROM basic.sales WHERE id =2;
