
-- NULL - UNKOWN/MISSING VAL
--EMPTY STRING - know string val but it contrains no characters
--zero - acrual numeric value of 0


DROP TABLE IF EXISTS basic.value_examples;

CREATE TABLE basic.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basic.value_examples (nickname,bio,score)
VALUES 
(
    'rajkumar',
    'Hi i am raj',
    25
),
(
    'harsh',
    'Hi i am harsh',
    26
),
(
    'harsh',
    null,
    null
);

-- SELECT * FROM basic.value_examples;
SELECT FROM basic.value_examples WHERE bio IS NULL;
SELECT FROM basic.value_examples WHERE score = 0;
SELECT FROM basic.value_examples WHERE nickname IS NOT NULL;