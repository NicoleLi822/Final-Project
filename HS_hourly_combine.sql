
WITH all_rides AS (
SELECT strftime('%m/%d/%Y %H', pickup_datetime) as ride_to_hour
FROM taxi_trips
WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-07'
UNION ALL
SELECT strftime('%m/%d/%Y %H', pickup_datetime) as ride_to_hour
FROM uber_trips
WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-07')

SELECT strftime('%m/%d/%Y %H', DATE) AS weather_to_hour,
COALESCE(COUNT(all_rides.ride_to_hour), 0) AS rides_count,
HourlyPrecipitation,
HourlyWindSpeed

FROM hourly_weather
LEFT OUTER JOIN all_rides
ON weather_to_hour = ride_to_hour
WHERE hourly_weather.DATE BETWEEN '2012-10-22' AND '2012-11-07'
GROUP BY weather_to_hour


