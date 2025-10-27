-- 2. Pole powierzchni bufora wokół najkrótszej linii łączącej obiekt3 i obiekt4
SELECT ST_Area(
    ST_Buffer(
        ST_ShortestLine(
            (SELECT geometria FROM obiekty WHERE nazwa = 'obiekt3'),
            (SELECT geometria FROM obiekty WHERE nazwa = 'obiekt4')
        ),
        5
    )
) AS pole_bufora;