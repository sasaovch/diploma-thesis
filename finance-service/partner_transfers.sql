CREATE TABLE partner_transfers (
    id SERIAL PRIMARY KEY,
    account_id INTEGER REFERENCES account_details(id) ON DELETE CASCADE,
    external_reference VARCHAR(100),                  -- ID платежа во внешней системе
    amount NUMERIC(12, 2) NOT NULL CHECK (amount > 0),
    status VARCHAR(20) NOT NULL DEFAULT 'initiated',  -- initiated, processing, success, failed
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);
