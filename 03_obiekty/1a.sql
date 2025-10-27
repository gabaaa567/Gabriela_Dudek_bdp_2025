-- a. obiekt1 - linia łamana
INSERT INTO obiekty (nazwa, geometria) VALUES 
('obiekt1', ST_GeomFromText('LINESTRING(0 1, 1 1, 2 2, 3 2)', 0));
