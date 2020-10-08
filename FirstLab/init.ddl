CREATE TABLE cities
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(80) NOT NULL,
    population INT         NOT NULL,
    alive      BOOLEAN DEFAULT true
);

CREATE TABLE headquarters
(
    id         SERIAL PRIMARY KEY,
    city_id    SERIAL
        CONSTRAINT fk_cities_city_id
            REFERENCES cities (id),
    classified BOOLEAN DEFAULT true,
    headcount  INT NOT NULL
);

CREATE TABLE stock
(
    id SERIAL PRIMARY KEY
);
CREATE TABLE guns
(
    id       SERIAL PRIMARY KEY,
    gun_type VARCHAR(80) NOT NULL
);
CREATE TABLE foods
(
    id        SERIAL PRIMARY KEY,
    food_type VARCHAR(80) NOT NULL
);
CREATE TABLE drugs
(
    id        SERIAL PRIMARY KEY,
    drug_name VARCHAR(80) NOT NULL
);
CREATE TABLE gun_stock
(

    stock_id SERIAL
        CONSTRAINT fk_stock_id
            REFERENCES stock (id),
    gun_id   SERIAL
        CONSTRAINT fk_guns_id
            REFERENCES guns (id),
    amount   INT NOT NULL
);

CREATE TABLE drug_stock
(
    stock_id SERIAL
        CONSTRAINT fk_stock_id
            REFERENCES stock (id),
    drug_id  SERIAL
        CONSTRAINT fk_drugs_id
            REFERENCES drugs (id),
    amount   INT NOT NULL
);

CREATE TABLE food_stock
(
    stock_id SERIAL
        CONSTRAINT fk_stock_id
            REFERENCES stock (id),
    food_id  SERIAL
        CONSTRAINT fk_foods_id
            REFERENCES foods (id),
    amount   INT NOT NULL
);

CREATE TABLE employees
(
    id              SERIAL PRIMARY KEY,
    callsign        VARCHAR(80) UNIQUE,
    sphere          VARCHAR(80) NOT NULL,
    headquarters_id SERIAL
        CONSTRAINT fk_headquarters_headquarters_id
            REFERENCES headquarters (id),
    gun_allowance   BOOLEAN DEFAULT false,
    gun_id          SERIAL
        CONSTRAINT fk_guns_gun_id
            REFERENCES guns (id)
);

CREATE TABLE investors
(
    id                       SERIAL PRIMARY KEY,
    name                     VARCHAR(80) NOT NULL,
    headquarters_of_interest SERIAL
        CONSTRAINT fk_headquarters_id
            REFERENCES headquarters (id),
    amount                   NUMERIC     NOT NULL,
    privileges               BOOLEAN     NOT NULL DEFAULT true,
    origin                   VARCHAR(80) NOT NULL
);

CREATE TABLE suppliers
(
    id       SERIAL PRIMARY KEY,
    stock_id SERIAL
        CONSTRAINT fk_stock_stock_id
            REFERENCES stock (id),
    trust    INT
        CHECK ( trust >= 0 and trust <= 10)
);
