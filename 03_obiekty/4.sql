-- 4. Utworzenie obiekt7 jako połączenie obiekt3 i obiekt4
INSERT INTO obiekty (nazwa, geometria)
SELECT 'obiekt7', ST_Union(o3.geometria, o4.geometria)
FROM 
    (SELECT geometria FROM obiekty WHERE nazwa = 'obiekt3') o3,
    (SELECT geometria FROM obiekty WHERE nazwa = 'obiekt4') o4;
