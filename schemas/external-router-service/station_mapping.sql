CREATE TABLE station_id_mapping (
    id SERIAL PRIMARY KEY,
    internal_station_id INTEGER NOT NULL,
    external_station_id TEXT NOT NULL,
    provider_id INTEGER NOT NULL REFERENCES external_providers(id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE (internal_station_id, provider_id),
    UNIQUE (external_station_id, provider_id)
);