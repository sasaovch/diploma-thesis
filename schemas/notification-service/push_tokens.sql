CREATE TABLE push_tokens (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE,
    push_token TEXT,
    device_type VARCHAR(50), -- 'mobile', 'web'
    created_at TIMESTAMPTZ DEFAULT NOW()
);
