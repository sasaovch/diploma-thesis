CREATE TABLE station_connectors (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL REFERENCES charging_stations(id) ON DELETE CASCADE,
    connector_type VARCHAR(50) NOT NULL, -- CCS, CHAdeMO, Type2
    max_power_kw NUMERIC(6, 2) NOT NULL -- максимальная мощность на разъёме
);