-- 7. Sklepy sportowe w odległości 300m od parków
SELECT COUNT(*)
FROM t2019_kar_poi_table poi
WHERE poi.category = 'Sporting Goods Store'
AND EXISTS (
    SELECT 1
    FROM t2019_kar_land_use_a park
    WHERE ST_Distance(poi.geom, park.geom) < 300
);