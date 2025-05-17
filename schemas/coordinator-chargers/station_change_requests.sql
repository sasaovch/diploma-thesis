CREATE TABLE station_change_requests (
    id SERIAL PRIMARY KEY,
    station_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    change_type VARCHAR(20) NOT NULL,   -- 'create', 'delete', 'update_status', 'add_photo', 'edit_info', 'rate'
    change_status VARCHAR(20) NOT NULL, -- 'pending', 'rejected', 'applied'
    need_check BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    reviewed_at TIMESTAMP,
    applied_at TIMESTAMP,
    payload TEXT,
    comment TEXT
);