with total_avg AS(
    SELECT
    city, country, lat, lon, year,
    AVG(avgtemp_c) AS avg_temp_week,
    MAX(maxtemp_c) AS max_temp_week,
    MIN(mintemp_c) AS min_temp_weekday
    FROM{{ref("prep_temp")}}
    GROUP BY city, country, week, lat, lon, year
)
SELECT * FROM total_avg