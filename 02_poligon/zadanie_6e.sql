-- e. Wyznacz najkrótszą odległość między budynkiem BuildingC a punktem K

SELECT ST_Distance(
(SELECT geometry FROM buildings WHERE name = 'BuildingC'),
(SELECT geometry FROM poi WHERE name = 'K')
) AS distance;

-- pobieramy geometrię BuildingC, pozniej punktu K, 
-- ST_Distance działa tak, że wybiera zawsze najkrótszą prostą linię