CREATE TABLE station_provider_changes (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL,
    provider_id INTEGER NOT NULL,
    change_type VARCHAR(20) NOT NULL,   -- 'create', 'delete', 'update_status', 'edit_info'
    change_status VARCHAR(20) NOT NULL, -- 'pending', 'applied'
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    payload TEXT
);