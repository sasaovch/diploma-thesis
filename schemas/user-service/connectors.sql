CREATE TABLE connectors (
    id SERIAL PRIMARY KEY,
    connector_type VARCHAR(50) NOT NULL -- Тип разъема (например, CCS, CHAdeMO, Type 2)
);
