-- 3. Zamiana obiekt4 na poligon
-- WARUNEK: Linia musi być zamknięta (pierwszy i ostatni punkt muszą być identyczne)
-- Najpierw sprawdzamy czy linia jest zamknięta:
SELECT ST_IsClosed(geometria) FROM obiekty WHERE nazwa = 'obiekt4';

-- Jeśli nie jest zamknięta, zamykamy ją:
UPDATE obiekty 
SET geometria = ST_AddPoint(
    geometria, 
    ST_StartPoint(geometria)
)
WHERE nazwa = 'obiekt4' 
AND NOT ST_IsClosed(geometria);

-- Teraz konwertujemy na poligon:
UPDATE obiekty 
SET geometria = ST_MakePolygon(geometria)
WHERE nazwa = 'obiekt4';