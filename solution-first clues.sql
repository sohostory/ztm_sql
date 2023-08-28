SELECT
    DISTINCT r.vehicle_id,
    u.name AS "owner name",
    u.address,
    v.status,
    v.current_location

FROM
    suspected_rides AS sr
    JOIN rides AS r ON r.id = sr.ride_id
    JOIN vehicles AS v ON v.id = r.vehicle_id
    JOIN users AS u ON u.id = v.owner_id