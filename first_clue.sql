SELECT
    DISTINCT(vehicle_id),
    users.name AS "owner name",
    users.address,
    status,
    current_location
    
FROM 
    vehicle_location_histories AS veh_hist
    JOIN rides ON veh_hist.ride_id = rides.id
    JOIN vehicles ON rides.vehicle_id = vehicles.id
    JOIN users ON vehicles.owner_id = users.id
    
WHERE
    '2020/06/23' = TIMESTAMP::date
    AND lat BETWEEN -74.997 AND -74.9968
    AND long BETWEEN 40.5 AND 40.6;