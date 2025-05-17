CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(100) NOT NULL,        -- Марка (например, Tesla)
    model VARCHAR(100) NOT NULL,        -- Модель (например, Model S)
    year INTEGER NOT NULL,              -- Год выпуска
    version VARCHAR(100),               -- Версия или комплектация
    battery_capacity_kwh NUMERIC(5,2),  -- Объем батареи в кВт·ч
    consumption_highway NUMERIC(5,2),   -- Расход на трассе (кВт·ч/100 км)
    consumption_city NUMERIC(5,2),      -- Расход в городе
    consumption_combined NUMERIC(5,2),  -- Смешанный расход
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);
