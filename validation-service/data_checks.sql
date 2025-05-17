CREATE TABLE data_checks (
    id SERIAL PRIMARY KEY,
    object_id INTEGER NOT NULL,
    value TEXT NOT NULL,
    object_type VARCHAR(8) NOT NULL,             -- 'photo', 'feedback'
    status VARCHAR(7) NOT NULL DEFAULT 'pending' -- 'pending', 'passed', 'blocked'
    need_manual_ckeck BOOLEAN DEFAULT FALSE,
    automated_check_id INTEGER,                      -- ID автоматической проверки
    manual_check_id INTEGER                          -- ID ручной проверки
);