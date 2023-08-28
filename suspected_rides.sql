CREATE VIEW suspected_rides AS

SELECT *
FROM vehicle_location_histories AS vlh
WHERE
    city = 'new york'
    AND lat BETWEEN -74.997 AND -74.9968
    AND long BETWEEN 40.5 AND 40.6
    AND vlh.timestamp::date = '2020-06-23'::date
ORDER BY long;
