-- d. obiekt4 - linia łamana
INSERT INTO obiekty (nazwa, geometria) VALUES 
('obiekt4', ST_GeomFromText('LINESTRING(4 3, 5 4, 6 3)', 0));