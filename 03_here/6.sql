-- 6. Skrzyżowania w odległości 200m od linii
WITH linia AS (
    SELECT ST_MakeLine(geom ORDER BY id) as geom
    FROM input_points
)
SELECT sn.*
FROM t2019_street_node sn, linia l
WHERE ST_Distance(
    ST_Transform(sn.geom, 3068),
    l.geom
) < 200;