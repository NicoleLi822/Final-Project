
WITH allrides AS(
SELECT distance FROM taxi_trips
WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00' AND '2013-07-31 23:59:59'
UNION ALL
SELECT distance FROM uber_trips
WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00' AND '2013-07-31 23:59:59')

SELECT distance
FROM allrides

ORDER BY distance ASC

LIMIT 1
OFFSET (
SELECT COUNT(*)
FROM allrides) * (95) / 100 - 1
