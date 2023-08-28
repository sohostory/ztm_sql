CREATE VIEW suspected_rider_names AS
    SELECT
        SPLIT_PART( u.name, ' ', 1) AS first_name,
        SPLIT_PART( u.name, ' ', 2) AS last_name

    FROM
        suspected_rides AS sr
        JOIN rides AS r ON r.id = sr.ride_id
        JOIN users AS u ON u.id = r.rider_id