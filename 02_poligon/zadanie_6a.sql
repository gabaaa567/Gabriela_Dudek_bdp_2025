-- Wyznacz całkowitą długość dróg w analizowanym mieście.  
SELECT name, ST_Length(geometry) AS length FROM roads;
SELECT SUM(ST_Length(geometry)) AS total_length FROM roads;

