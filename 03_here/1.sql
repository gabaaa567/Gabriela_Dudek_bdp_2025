-- CREATE EXTENSION IF NOT EXISTS postgis;


-- 1. Budynki nowe/wyremontowane między 2018 a 2019
CREATE TEMP TABLE nowe_budynki AS
SELECT b2019.*
FROM t2019_kar_buildings b2019
WHERE NOT EXISTS (
    SELECT 1 
    FROM t2018_kar_buildings b2018 
    WHERE b2018.gid = b2019.gid
);

