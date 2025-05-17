CREATE TABLE search_results (
    id SERIAL PRIMARY KEY DEFAULT,
    query TEXT NOT NULL,
    result_count INTEGER NOT NULL,
    search_location GEOGRAPHY(POINT, 4326),
    searched_objects JSONB,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
