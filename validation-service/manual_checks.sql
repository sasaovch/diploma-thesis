CREATE TABLE manual_checks (
    id SERIAL PRIMARY KEY,
    object_id INTEGER NOT NULL REFERENCES data_checks(id) ON DELETE CASCADE,
    checked_by INTEGER,
    checked_at TIMESTAMP DEFAULT NULL,
    comments TEXT,
    passed BOOLEAN
);