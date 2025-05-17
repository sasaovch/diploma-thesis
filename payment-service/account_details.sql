CREATE TABLE account_details (
    id SERIAL PRIMARY KEY,
    bik VARCHAR(9) NOT NULL,
    account VARCHAR(20) NOT NULL, -- баноквский счет
    tax VARCHAR(12) NOT NULL,
    bank TEXT
);
