
SELECT COUNT(*) AS trips, strftime('%H', pickup_datetime) AS hour
FROM taxi_trips
WHERE pickup_datetime <'2015-07-01 00:00:00'
GROUP BY hour
ORDER BY trips
