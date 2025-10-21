-- Wybierz te budynki, których centroid (ST_Centroid) znajduje się powyżej drogi  
-- o nazwie RoadX.

SELECT 
    name, 
    ST_AsText(ST_Centroid(geometry)) AS centroid 
FROM buildings
WHERE ST_Y(ST_Centroid(geometry)) > ( -- czy centroid jest powyzej?
    SELECT ST_Y(ST_PointN(geometry, 1)) -- bierze pierwszy punkt linii RoadX
    FROM roads -- i wyciąga wspolrzedna Y tego punktu
    WHERE name = 'RoadX'
);