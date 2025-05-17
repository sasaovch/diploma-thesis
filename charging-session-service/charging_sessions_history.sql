CREATE TABLE charging_sessions_history (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    station_id INTEGER NOT NULL,
    started_at TIMESTAMP NOT NULL,
    ended_at TIMESTAMP NOT NULL,
    total_volume_kwh NUMERIC(10, 2),
    total_cost NUMERIC(10, 2)
);