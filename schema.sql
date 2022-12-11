
CREATE TABLE IF NO EXITS hourly_weather
(
    id INTERGER PRIMARY KEY,
    DATE DATE,
    HourlyPrecipitation FLOAT,
    HourlyWindSpeed FLOAT
)

CREATE TABLE IF NO EXITS daily_weather
(
    id INTERGER PRIMARY KEY,
    DATE_day DATE,
    DailyPrecipitation FLOAT,
    DailyAverageWindSpeed FLOAT,
)

CREATE TABLE IF NO EXITS taxi_trips
(
    id INTERGER PRIMARY KEY,
    pickup_datetime DATETIME,
    tip_amount FLOAT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    distance FLOAT
)

CREATE TABLE IF NO EXITS uber_trips
(
    id INTERGER PRIMARY KEY,
    pickup_datetime FLOAT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    distance FLOAT
)

CREATE TABLE IF NO EXITS sun_time
(
    id INTERGER PRIMARY KEY,
    Sunrise_Time DATETIME,
    Sunset_Time DATETIME
)
