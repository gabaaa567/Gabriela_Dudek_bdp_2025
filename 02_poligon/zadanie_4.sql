CREATE TABLE buildings (
    id SERIAL PRIMARY KEY, --serial auto-inkrementuje wartosci; ustawia domyslną wartosc
    geometry GEOMETRY,
    name VARCHAR(50)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY,
    name VARCHAR(50)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY,
    name VARCHAR(50)
);

