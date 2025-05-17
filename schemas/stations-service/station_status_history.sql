CREATE TABLE station_status_history (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL REFERENCES charging_stations(id) ON DELETE CASCADE,
    prev_id INTEGER REFERENCES station_status_history(id) ON DELETE CASCADE,
    new_status VARCHAR(30) NOT NULL,
    changed_at TIMESTAMP NOT NULL DEFAULT NOW()
);
