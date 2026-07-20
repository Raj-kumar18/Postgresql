
DROP TABLE IF EXISTS basic.students;

CREATE TABLE basic.students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK(age>=18),
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basic.students (name, email, age)
VALUES ('raj', 'raj@gmail.com', 19);
SELECT * FROM basic.students;