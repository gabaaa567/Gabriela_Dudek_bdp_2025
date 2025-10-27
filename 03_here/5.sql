-- 5. Aktualizacja układu współrzędnych
UPDATE input_points
SET geom = ST_Transform(geom, 3068);

ALTER TABLE input_points 
ALTER COLUMN geom TYPE GEOMETRY(Point, 3068);