CREATE TABLE route_points (
    id SERIAL PRIMARY KEY,
    route_id INTEGER NOT NULL REFERENCES user_route_history(id) ON DELETE CASCADE,
    point_index INTEGER NOT NULL,
    location GEOGRAPHY(Point, 4326),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);