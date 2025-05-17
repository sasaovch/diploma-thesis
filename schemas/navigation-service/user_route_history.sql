CREATE TABLE user_route_history (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    finished_at TIMESTAMP,
    start_location GEOGRAPHY(Point, 4326) NOT NULL,
    end_location GEOGRAPHY(Point, 4326) NOT NULL
);
