CREATE TABLE charging_stations (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    location GEOGRAPHY(Point, 4326) NOT NULL,
    occupancy_ratio NUMERIC(3, 2) CHECK (occupancy_ratio >= 0 AND occupancy_ratio <= 1), -- от 0 до 1
    price_per_kwh NUMERIC(10, 2),
    operator TEXT,
    manufacturer TEXT,
    status VARCHAR(30) NOT NULL, -- 'available', 'offline', 'busy'
    service_types TEXT,          -- 'cafes', 'shops', 'parks'
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);