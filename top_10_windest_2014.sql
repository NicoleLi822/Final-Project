
WITH all_rides AS (
SELECT pickup_datetime
FROM taxi_trips
UNION ALL
SELECT pickup_datetime
FROM uber_trips
)
SELECT date(pickup_datetime) AS date, COUNT(*)
FROM all_rides
GROUP BY date
HAVING date IN (SELECT date(DATE)
                FROM daily_weather
                WHERE DATE BETWEEN '2014-01-01' AND '2014-12-31'
                ORDER BY DailyAverageWindSpeed DESC
                LIMIT 10)
LIMIT 10;
