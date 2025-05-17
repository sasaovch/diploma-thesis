CREATE TABLE map_nodes (
    id SERIAL PRIMARY KEY,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    location GEOGRAPHY(Point, 4326),
    type VARCHAR(20) NOT NULL, -- 'station', 'building'
    charging_station_id INTEGER
);
