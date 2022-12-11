
SELECT COUNT(*) AS trips, strftime('%w', pickup_datetime) AS WeekNumber
FROM uber_trips
GROUP BY WeekNumber
ORDER BY trips
