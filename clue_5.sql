SELECT DISTINCT
    CONCAT(t1.first_name, ' ', t1.last_name) AS employee,
    CONCAT(u.first_name, ' ', u.last_name) AS rider

FROM
    dblink('host=localhost user=postgres password=root dbname=Movr_Employees', 
        '
            SELECT
                first_name, 
                last_name
            FROM employees;
        ') AS t1(first_name NAME, last_name NAME)
    JOIN suspected_rider_names AS u ON t1.last_name = u.last_name

ORDER BY rider