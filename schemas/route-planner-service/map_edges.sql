CREATE TABLE map_edges (
    id SERIAL PRIMARY KEY,
    from_node_id INTEGER NOT NULL REFERENCES map_nodes(id) ON DELETE CASCADE,
    to_node_id INTEGER NOT NULL REFERENCES map_nodes(id) ON DELETE CASCADE,
    distance NUMERIC(10, 2) NOT NULL,
    speed_limit NUMERIC(5, 2),
    road_type VARCHAR(50), -- 'highway', 'city'
    is_accessible BOOLEAN DEFAULT TRUE
);
