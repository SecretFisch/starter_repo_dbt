with total_avg AS(
    SELECT
    city, country, lat, lon, month, --weekday,
    AVG(avgtemp_c) AS avg_temp_month,
    MAX(maxtemp_c) AS max_temp_month,
    MIN(mintemp_c) AS min_temp_month
    FROM{{ref("prep_temp")}}
    GROUP BY city, country, month, lat, lon --weekday
)
SELECT * FROM total_avg