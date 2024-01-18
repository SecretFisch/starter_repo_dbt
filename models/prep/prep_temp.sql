WITH temp_daily AS (
    SELECT * 
    FROM {{ref('staging_weather')}}
),
add_weekday AS (
    SELECT *,
        to_char(date,'day') AS weekday,
        to_char(date,'DD') AS day_num,
        to_char(date,'week') AS week,
        to_char(date,'month') AS month,
        to_char(date,'year') AS year
    FROM temp_daily
)
SELECT *
FROM add_weekday