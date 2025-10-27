-- b. obiekt2 - okrąg 
INSERT INTO obiekty (nazwa, geometria) VALUES 
('obiekt2', ST_Buffer(ST_GeomFromText('POINT(2 0)', 0), 1, 32));
