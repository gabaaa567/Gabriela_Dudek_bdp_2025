-- 2. Nowe POI w promieniu 500m od nowych budynków
-- Najpierw znajdź nowe POI
WITH nowe_poi AS (
    SELECT p2019.*
    FROM t2019_kar_poi_table p2019
    WHERE NOT EXISTS (
        SELECT 1 
        FROM t2018_kar_poi_table p2018 
        WHERE p2018.gid = p2019.gid
    )
)
SELECT np.category, COUNT(*) as liczba
FROM nowe_poi np, nowe_budynki nb
WHERE ST_Distance(np.geom, nb.geom) < 500
GROUP BY np.category;