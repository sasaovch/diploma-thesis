CREATE TABLE top_up_history (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES user_balances(id) ON DELETE CASCADE,
    operation_type VARCHAR (8),                    -- 'topup', 'withdraw'
    amount NUMERIC(12, 2) NOT NULL CHECK (amount > 0),
    external_reference VARCHAR(100),               -- ID платежа во внешней системе
    status VARCHAR(20) NOT NULL DEFAULT 'pending', -- pending, success, failed
    created_at TIMESTAMPTZ DEFAULT NOW()
);
