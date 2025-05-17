CREATE TABLE station_reviews (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    url TEXT NOT NULL,
    status VARCHAR(20), -- 'pending', 'approved'
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
