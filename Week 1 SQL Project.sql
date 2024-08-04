SELECT * FROM luxdev_week_1_project.weather_data;

-- Find the number of times the wind speed was exactly 4 km/hr.
SELECT COUNT(*) 
AS wind_speed_count
FROM weather_data
WHERE Wind_Speed = 4;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            = 4;

-- Rename the column "Weather" to "Weather_Condition."
ALTER TABLE weather_data
RENAME COLUMN Weather TO Weather_Condition;
SELECT * FROM weather_data;

-- Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
SELECT COUNT(*)
AS wind_speed_visibility_count
FROM weather_data
WHERE Wind_Speed > 25 AND Visibility_km = 25;

-- Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.
SELECT * 
FROM weather_data
WHERE (Weather_Condition = 'Clear' AND Rel_Hum > 50) OR Visibility_km > 40;

-- Find the number of weather conditions that include snow.
SELECT COUNT(*)
count_snow_weather_condition
FROM weather_data
WHERE Weather_Condition LIKE '%Snow%';

