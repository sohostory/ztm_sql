SELECT
    DISTINCT r.vehicle_id,
    u.name AS "rider name",
    u.address

FROM
    suspected_rides AS sr
    JOIN rides AS r ON r.id = sr.ride_id
    JOIN users AS u ON u.id = r.rider_id