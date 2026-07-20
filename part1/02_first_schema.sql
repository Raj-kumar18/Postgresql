-- CREATE SCHEMA ka use database ke andar ek naya namespace (folder) banane ke liye hota hai.
-- Schema ka purpose related tables, views, functions, etc. ko organize karna hota hai.
-- IF NOT EXISTS ka matlab hai:
-- Agar "basic" schema pehle se exist karta hai to error mat do.
-- Agar exist nahi karta to naya schema create kar do.
CREATE SCHEMA IF NOT EXISTS basic;


-- CREATE EXTENSION PostgreSQL me additional features install karne ke liye use hota hai.
-- pgcrypto extension cryptography aur random UUID generate karne ke functions provide karta hai.
-- Example:
-- gen_random_uuid() -> Random UUID generate karta hai.
--
-- IF NOT EXISTS ka matlab:
-- Agar extension pehle se installed hai to dobara install mat karo aur error bhi mat do.
CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- SELECT statement database se data read (fetch) karne ke liye use hota hai.
SELECT schema_name

-- information_schema PostgreSQL ka ek built-in schema hai.
-- Iske andar database ki metadata (database ke baare me information) hoti hai.
--
-- schemata ek system view hai jisme database ke saare schemas ki list hoti hai.
FROM information_schema.schemata

-- ORDER BY schema_name ka matlab:
-- Jo schemas mile hain unhe schema_name ke basis par
-- alphabetical (A → Z) order me sort karke dikhao.
ORDER BY schema_name;



-- Office (Database)
-- │
-- ├── HR Department (Schema)
-- │     ├── employees
-- │     ├── salaries
-- │
-- ├── Finance Department (Schema)
-- │     ├── payments
-- │     ├── invoices
-- │
-- └── Sales Department (Schema)
--       ├── customers
--       ├── orders