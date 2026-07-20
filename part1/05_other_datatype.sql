
DROP TABLE IF EXISTS basic.app_events;

CREATE TABLE basic.app_events (
    -- UUID - 
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_name TEXT NOT NULL,

    --JSONB
    metadata JSONB DEFAULT '{}'::jsonb,
    created_at TIMESTAMP DEFAULT NOW()

);


INSERT INTO basic.app_events (event_name,metadata)
VALUES
(
    'signup',
    '{"browser":"chrome"}'
),
(
    'signin',
    '{"user":"raj"}'
);

-- SELECT * FROM basic.app_events;
SELECT 
    event_name,
    metadata ->> 'browser' AS browser

FROM basic.app_events
WHERE metadata ? 'browser';