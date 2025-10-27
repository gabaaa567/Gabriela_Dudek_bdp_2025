-- c. obiekt3 - linia łamana
INSERT INTO obiekty (nazwa, geometria) VALUES 
('obiekt3', ST_GeomFromText('LINESTRING(3 1, 4 2, 5 0)', 0));