CREATE TABLE user_balances (
    user_id SERIAL PRIMARY KEY,
    balance NUMERIC(12, 2) NOT NULL DEFAULT 0.00,
    updated_at TIMESTAMPTZ DEFAULT NOW()
);
