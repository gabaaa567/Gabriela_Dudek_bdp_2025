-- Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego 
-- budynek o nazwie BuildingA. 

SELECT 
name,
ST_Area(geometry) AS area, -- pole
ST_AsText(geometry) AS wkt, -- wspolrzedne
ST_Perimeter(geometry) AS perimeter --obwod
FROM buildings
WHERE name = 'BuildingA';