CREATE TABLE user_search_history (
    id SERIAL PRIMARY KEY DEFAULT,
    user_id INTEGER NOT NULL,
    query TEXT NOT NULL,
    result_count INTEGER
);
