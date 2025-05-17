CREATE TABLE charging_requests (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    station_id INTEGER NOT NULL,
    status VARCHAR(20) NOT NULL,       -- 'pending', 'confirmed', 'started', 'canceled', 'finished'
    created_at_at TIMESTAMP NOT NULL DEFAULT NOW(),
    last_update_at TIMESTAMP NOT NULL DEFAULT NOW()
);