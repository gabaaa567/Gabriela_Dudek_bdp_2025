CREATE EXTENSION postgis;

-- 1. Utworzenie tabeli i dodanie obiektów
CREATE TABLE obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(50),
    geometria GEOMETRY
);




















