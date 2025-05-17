CREATE TABLE station_summary (
    station_id SERIAL PRIMARY KEY,
    average_rating NUMERIC(3, 2) DEFAULT 0.00,
    review_count INTEGER DEFAULT 0,
    primary_photo_url TEXT,
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
