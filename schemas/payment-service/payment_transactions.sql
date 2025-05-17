CREATE TABLE payment_transactions (
    id SERIAL PRIMARY KEY,
    account_id INTEGER REFERENCES account_details(id) ON DELETE CASCADE,
    external_reference VARCHAR(100),                  -- ID платежа во внешней системе
    amount NUMERIC(12, 2) NOT NULL CHECK (amount > 0),
    status VARCHAR(20) NOT NULL DEFAULT 'initiated',  -- initiated, processing, success, failed
    attempt_count INTEGER DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    finished_at TIMESTAMPTZ DEFAULT NOW()
);
