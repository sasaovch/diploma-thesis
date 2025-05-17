CREATE TABLE login_history (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
    login_method VARCHAR(20) NOT NULL, -- 'phone', 'oauth'
    provider VARCHAR(50),              -- если oauth: 'google', 'yandex'
    login_time TIMESTAMPTZ DEFAULT NOW(),
    ip_address INET,
    device_type VARCHAR(50),            -- 'mobile', 'web'
    success BOOLEAN DEFAULT TRUE
);