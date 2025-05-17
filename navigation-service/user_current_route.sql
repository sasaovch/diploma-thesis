CREATE TABLE user_current_routes (
    user_id SERIAL PRIMARY KEY,
    route_id INTEGER NOT NULL REFERENCES user_route_history(id) ON DELETE CASCADE,
    start_location GEOGRAPHY(Point, 4326) NOT NULL,
    end_location GEOGRAPHY(Point, 4326),
    current_location GEOGRAPHY(Point, 4326),
    planned_distance_km NUMERIC(10, 2),
    planned_duration_seconds INTEGER,
    current_battary_level INTEGER,
    current_battary_level_kwh NUMERIC(5, 2),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
