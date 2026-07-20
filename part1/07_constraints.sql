-- Agar basic schema ke andar accounts table pehle se exist karta hai,
-- to usse delete (drop) kar do.
-- IF EXISTS isliye use kiya hai taki agar table na ho tab bhi error na aaye.

--Constraints PostgreSQL ka bahut important concept hai. Ye database ko invalid data save hone se bachate hain.

-- Constraints
-- │
-- ├── NOT NULL - Column me NULL value allow nahi karta.
-- ├── UNIQUE - Duplicate values allow nahi karta.
-- ├── PRIMARY KEY - Do constraints ka combination hai. Ye aitomaticaly - unique amd not null dono bna deta hai
-- ├── FOREIGN KEY -Table ke beech relation banata hai.
-- ├── CHECK - Condition check karta hai. [check using IN],[CHECK using Length]
-- ├── DEFAULT -Value nahi di to automatically store hogi.
-- ├── EXCLUSION (Advanced) - Range overlap prevent karta hai.
-- └── GENERATED (Computed Columns) -Computed Column Automatically calculate hota hai.


DROP TABLE IF EXISTS basic.accounts;


-- basic schema ke andar accounts naam ka naya table create kar rahe hain.
CREATE TABLE basic.accounts (

    -- SERIAL:
    -- Auto Increment Integer.
    -- Pehla record = 1
    -- Dusra = 2
    -- Teesra = 3
    id SERIAL PRIMARY KEY,

    -- Fullname mandatory hai.
    -- NULL value allow nahi hogi.
    fullname TEXT NOT NULL,

    -- Email bhi mandatory hai.
    -- UNIQUE ka matlab same email dobara insert nahi kar sakte.
    email TEXT NOT NULL UNIQUE,

    -- Default value true rahegi.
    -- Agar insert ke time value nahi di to automatically TRUE store hoga.
    isActive BOOLEAN DEFAULT true,

    -- CHECK constraint.
    -- Age minimum 18 honi chahiye.
    age INTEGER CHECK (age >= 18),
    gender TEXT
CHECK(gender IN('Male','Female','Other')),

    -- Agar created_at ki value insert nahi ki,
    -- to current timestamp automatically save ho jayega.
    created_at TIMESTAMP DEFAULT NOW()
);


-- Sirf fullname, email aur age insert kar rahe hain.
-- id auto generate hoga.
-- isActive automatically TRUE hoga.
-- created_at automatically current time ho jayega.


INSERT INTO basic.accounts(fullname,email,age,gender)
VALUES(
    'harsh',
    'dbf@gmail.com',
    22,
    "male"
);



