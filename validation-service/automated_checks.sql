CREATE TABLE automated_checks (
    id SERIAL PRIMARY KEY,
    object_id INTEGER NOT NULL REFERENCES data_checks(id) ON DELETE CASCADE,
    comments TEXT,
    passed BOOLEAN NOT NULL,
    checked_at TIMESTAMPTZ DEFAULT NOW()
);