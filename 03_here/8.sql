-- 8. Przecięcia torów z ciekami (mosty)
CREATE TABLE t2019_kar_bridges AS
SELECT 
    row_number() OVER () as gid,
    ST_Intersection(r.geom, w.geom) as geom
FROM t2018_kar_railways r, t2018_kar_water_lines w
WHERE ST_Intersects(r.geom, w.geom);