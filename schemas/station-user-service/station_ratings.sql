CREATE TABLE station_ratings (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    rating NUMERIC(2, 1) CHECK (rating >= 0 AND rating <= 5),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
