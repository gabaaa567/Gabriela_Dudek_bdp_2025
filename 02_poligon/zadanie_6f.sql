-- Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w 
-- odległości większej niż 0.5 od budynku BuildingB.  

SELECT ST_Area(
ST_Difference(
(SELECT geometry FROM buildings WHERE name = 'BuildingC'),
ST_Buffer( -- tu tworzymy bufor wokol buildingB
(SELECT geometry FROM buildings WHERE name = 'BuildingB'), 0.5))
) AS area;

-- ST_Difference sluzy do odejmowania wlasnie, czyli odejmuje od BuildingC 
-- całą część, która znajduje się w strefie bufora, czyli blizej niz 0.5