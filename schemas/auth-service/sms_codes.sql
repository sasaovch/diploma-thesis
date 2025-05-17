CREATE TABLE sms_codes (    
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    phone_number VARCHAR(10) NOT NULL,
    code VARCHAR(6) NOT NULL,
    expires_at TIMESTAMPTZ NOT NULL,
    created_at  TIMESTAMPTZ DEFAULT NOW(),
    is_used BOOLEAN DEFAULT FALSE,
    attempt_count INTEGER DEFAULT 0
);