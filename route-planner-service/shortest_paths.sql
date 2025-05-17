CREATE TABLE shortest_paths (
    from_node_id INTEGER NOT NULL,
    to_node_id INTEGER NOT NULL,
    distance NUMERIC(10, 2) NOT NULL,
    path TEXT[] NOT NULL, -- путь - массив вершин
    PRIMARY KEY (from_node_id, to_node_id),
    FOREIGN KEY (from_node_id) REFERENCES map_nodes(id) ON DELETE CASCADE,
    FOREIGN KEY (to_node_id) REFERENCES map_nodes(id) ON DELETE CASCADE
);
