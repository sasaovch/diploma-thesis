CREATE TABLE notification_history (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE,
    channel VARCHAR(10) NOT NULL CHECK (channel IN ('sms', 'push')),
    status VARCHAR(20) NOT NULL, -- sent, failed, queued
    device_type VARCHAR(50),     -- 'mobile', 'web'
    push_token TEXT,
    success BOOLEAN DEFAULT FALSE,
    created_at  TIMESTAMPTZ DEFAULT NOW(),
    retry_count INTEGER DEFAULT 0
);
