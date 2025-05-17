CREATE TABLE station_reviews (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    review_text TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
);