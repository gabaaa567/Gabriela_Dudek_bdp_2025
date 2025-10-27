-- 3. Reprojekcja ulic do DHDN.Berlin/Cassini
CREATE TABLE streets_reprojected AS
SELECT 
    gid,
    ST_Transform(geom, 3068) as geom
FROM t2018_kar_streets;