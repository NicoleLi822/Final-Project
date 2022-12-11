
WITH allrides AS(
SELECT pickup_datetime, distance FROM taxi_trips
WHERE pickup_datetime between '2009-01-01 00:00:00' AND '2009-12-31 23:59:59'
UNION ALL
SELECT pickup_datetime, distance FROM uber_trips
WHERE pickup_datetime between '2009-01-01 00:00:00' AND '2009-12-31 23:59:59')

SELECT date(pickup_datetime) AS day, AVG(distance) AS mean_dist, COUNT(*) AS trips
FROM allrides

GROUP BY day
ORDER BY trips DESC
LIMIT 10
