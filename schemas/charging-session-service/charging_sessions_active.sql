CREATE TABLE charging_sessions_active (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    station_id INTEGER NOT NULL,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    current_power_kw NUMERIC(6, 2),        -- Текущая мощность (кВт)
    charged_volume_kwh NUMERIC(10, 2),     -- Сколько уже заряжено (кВт·ч)
    cost NUMERIC(10, 2)                    -- Текущая стоимость зарядки
);