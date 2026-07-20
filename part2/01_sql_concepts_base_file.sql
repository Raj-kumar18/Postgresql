
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS prodcuts;

CREATE TABLE product(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >=0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock>=0),
    isActive BOOLEAN NOT NULL DEFAULT true,
    description TEXT,
    created_at TIMESTAMP DEFAULT NOW()

);

SELECT * FROM product;