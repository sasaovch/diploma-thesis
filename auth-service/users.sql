CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    phone_number VARCHAR(10) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);