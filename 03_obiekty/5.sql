-- 5. Pole powierzchni buforów wokół obiektów bez łuków
SELECT SUM(ST_Area(ST_Buffer(geometria, 5))) AS suma_pol_buforow
FROM obiekty
WHERE NOT ST_HasArc(geometria);