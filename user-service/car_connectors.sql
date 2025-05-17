CREATE TABLE car_connectors (
    car_id INTEGER REFERENCES cars(id) ON DELETE CASCADE,
    connector_id INTEGER REFERENCES connectors(id) ON DELETE CASCADE,

    UNIQUE(car_id, connector_id)
);
